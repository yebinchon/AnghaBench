; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_wr_corr_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_wr_corr_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { i32, %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32 }

@BRCMNAND_CORR_THRESHOLD = common dso_local global i32 0, align 4
@BRCMNAND_CORR_THRESHOLD_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmnand_host*, i32)* @brcmnand_wr_corr_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_wr_corr_thresh(%struct.brcmnand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmnand_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %11 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %10, i32 0, i32 1
  %12 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %11, align 8
  store %struct.brcmnand_controller* %12, %struct.brcmnand_controller** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @BRCMNAND_CORR_THRESHOLD, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %15 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %18 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1794
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 7, i32* %7, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %24 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 1536
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 6, i32* %7, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %30 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 1280
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 5, i32* %7, align 4
  br label %35

34:                                               ; preds = %28
  store i32 4, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %39 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 1794
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 4
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @BRCMNAND_CORR_THRESHOLD_EXT, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %9, align 4
  %49 = srem i32 %48, 4
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %68

52:                                               ; preds = %37
  %53 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %54 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 1536
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 5
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @BRCMNAND_CORR_THRESHOLD_EXT, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %9, align 4
  %64 = srem i32 %63, 5
  %65 = load i32, i32* %7, align 4
  %66 = mul i32 %64, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %52
  br label %68

68:                                               ; preds = %67, %47
  %69 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub i32 %71, 1
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @brcmnand_rmw_reg(%struct.brcmnand_controller* %69, i32 %70, i32 %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @brcmnand_rmw_reg(%struct.brcmnand_controller*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
