; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_dev_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_dev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ppp_dev_name(%struct.ppp_channel* %0) #0 {
  %2 = alloca %struct.ppp_channel*, align 8
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i8*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %2, align 8
  %5 = load %struct.ppp_channel*, %struct.ppp_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %5, i32 0, i32 0
  %7 = load %struct.channel*, %struct.channel** %6, align 8
  store %struct.channel* %7, %struct.channel** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load %struct.channel*, %struct.channel** %3, align 8
  %9 = icmp ne %struct.channel* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %3, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 0
  %13 = call i32 @read_lock_bh(i32* %12)
  %14 = load %struct.channel*, %struct.channel** %3, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load %struct.channel*, %struct.channel** %3, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.channel*, %struct.channel** %3, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %25, %18, %10
  %34 = load %struct.channel*, %struct.channel** %3, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 0
  %36 = call i32 @read_unlock_bh(i32* %35)
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
