; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_list_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.major_info = type { i8*, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@major_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tap_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_list_add(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.major_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.major_info* @kzalloc(i32 24, i32 %7)
  store %struct.major_info* %8, %struct.major_info** %6, align 8
  %9 = load %struct.major_info*, %struct.major_info** %6, align 8
  %10 = icmp ne %struct.major_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MAJOR(i32 %15)
  %17 = load %struct.major_info*, %struct.major_info** %6, align 8
  %18 = getelementptr inbounds %struct.major_info, %struct.major_info* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.major_info*, %struct.major_info** %6, align 8
  %20 = getelementptr inbounds %struct.major_info, %struct.major_info* %19, i32 0, i32 3
  %21 = call i32 @idr_init(i32* %20)
  %22 = load %struct.major_info*, %struct.major_info** %6, align 8
  %23 = getelementptr inbounds %struct.major_info, %struct.major_info* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.major_info*, %struct.major_info** %6, align 8
  %27 = getelementptr inbounds %struct.major_info, %struct.major_info* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.major_info*, %struct.major_info** %6, align 8
  %29 = getelementptr inbounds %struct.major_info, %struct.major_info* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail_rcu(i32* %29, i32* @major_list)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.major_info* @kzalloc(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
