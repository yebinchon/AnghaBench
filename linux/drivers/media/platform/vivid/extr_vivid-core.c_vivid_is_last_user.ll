; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vivid_is_last_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vivid_is_last_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*)* @vivid_is_last_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_is_last_user(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %4 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %4, i32 0, i32 6
  %6 = call i32 @vivid_is_in_use(i32* %5)
  %7 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %7, i32 0, i32 5
  %9 = call i32 @vivid_is_in_use(i32* %8)
  %10 = add i32 %6, %9
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 4
  %13 = call i32 @vivid_is_in_use(i32* %12)
  %14 = add i32 %10, %13
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %15, i32 0, i32 3
  %17 = call i32 @vivid_is_in_use(i32* %16)
  %18 = add i32 %14, %17
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 2
  %21 = call i32 @vivid_is_in_use(i32* %20)
  %22 = add i32 %18, %21
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 1
  %25 = call i32 @vivid_is_in_use(i32* %24)
  %26 = add i32 %22, %25
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 0
  %29 = call i32 @vivid_is_in_use(i32* %28)
  %30 = add i32 %26, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @vivid_is_in_use(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
