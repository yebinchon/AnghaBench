; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mdio.c_mdio_set_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mdio.c_mdio_set_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_if_info = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdio_set_flag(%struct.mdio_if_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdio_if_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mdio_if_info* %0, %struct.mdio_if_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.mdio_if_info*, %struct.mdio_if_info** %8, align 8
  %17 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %17, align 8
  %19 = load %struct.mdio_if_info*, %struct.mdio_if_info** %8, align 8
  %20 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 %18(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %7, align 4
  br label %59

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %15, align 4
  br label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %59

47:                                               ; preds = %42
  %48 = load %struct.mdio_if_info*, %struct.mdio_if_info** %8, align 8
  %49 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %48, i32 0, i32 1
  %50 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %49, align 8
  %51 = load %struct.mdio_if_info*, %struct.mdio_if_info** %8, align 8
  %52 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 %50(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %47, %46, %28
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
