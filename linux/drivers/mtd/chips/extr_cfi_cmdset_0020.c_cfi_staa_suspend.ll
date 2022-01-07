; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, %struct.flchip* }
%struct.flchip = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @cfi_staa_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_suspend(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %10, %struct.map_info** %3, align 8
  %11 = load %struct.map_info*, %struct.map_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 0
  %13 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  store %struct.cfi_private* %13, %struct.cfi_private** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %54, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %20 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %57

25:                                               ; preds = %23
  %26 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %27 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %26, i32 0, i32 1
  %28 = load %struct.flchip*, %struct.flchip** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.flchip, %struct.flchip* %28, i64 %30
  store %struct.flchip* %31, %struct.flchip** %6, align 8
  %32 = load %struct.flchip*, %struct.flchip** %6, align 8
  %33 = getelementptr inbounds %struct.flchip, %struct.flchip* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.flchip*, %struct.flchip** %6, align 8
  %36 = getelementptr inbounds %struct.flchip, %struct.flchip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %47 [
    i32 129, label %38
    i32 128, label %38
    i32 132, label %38
    i32 131, label %38
    i32 130, label %46
  ]

38:                                               ; preds = %25, %25, %25, %25
  %39 = load %struct.flchip*, %struct.flchip** %6, align 8
  %40 = getelementptr inbounds %struct.flchip, %struct.flchip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.flchip*, %struct.flchip** %6, align 8
  %43 = getelementptr inbounds %struct.flchip, %struct.flchip* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.flchip*, %struct.flchip** %6, align 8
  %45 = getelementptr inbounds %struct.flchip, %struct.flchip* %44, i32 0, i32 0
  store i32 130, i32* %45, align 4
  br label %46

46:                                               ; preds = %25, %38
  br label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.flchip*, %struct.flchip** %6, align 8
  %52 = getelementptr inbounds %struct.flchip, %struct.flchip* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %14

57:                                               ; preds = %23
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %93, %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %68 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %67, i32 0, i32 1
  %69 = load %struct.flchip*, %struct.flchip** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.flchip, %struct.flchip* %69, i64 %71
  store %struct.flchip* %72, %struct.flchip** %6, align 8
  %73 = load %struct.flchip*, %struct.flchip** %6, align 8
  %74 = getelementptr inbounds %struct.flchip, %struct.flchip* %73, i32 0, i32 2
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.flchip*, %struct.flchip** %6, align 8
  %77 = getelementptr inbounds %struct.flchip, %struct.flchip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = load %struct.flchip*, %struct.flchip** %6, align 8
  %82 = getelementptr inbounds %struct.flchip, %struct.flchip* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.flchip*, %struct.flchip** %6, align 8
  %85 = getelementptr inbounds %struct.flchip, %struct.flchip* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.flchip*, %struct.flchip** %6, align 8
  %87 = getelementptr inbounds %struct.flchip, %struct.flchip* %86, i32 0, i32 3
  %88 = call i32 @wake_up(i32* %87)
  br label %89

89:                                               ; preds = %80, %66
  %90 = load %struct.flchip*, %struct.flchip** %6, align 8
  %91 = getelementptr inbounds %struct.flchip, %struct.flchip* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %5, align 4
  br label %63

96:                                               ; preds = %63
  br label %97

97:                                               ; preds = %96, %57
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
