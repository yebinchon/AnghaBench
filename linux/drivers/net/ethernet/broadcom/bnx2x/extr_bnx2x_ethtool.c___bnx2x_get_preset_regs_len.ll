; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c___bnx2x_get_preset_regs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c___bnx2x_get_preset_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@dump_num_registers = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @__bnx2x_get_preset_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnx2x_get_preset_regs_len(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %7 = call i64 @CHIP_IS_E1(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32**, i32*** @dump_num_registers, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32**, i32*** @dump_num_registers, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %18
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = call i64 @CHIP_IS_E2(%struct.bnx2x* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32**, i32*** @dump_num_registers, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %31
  %45 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %46 = call i64 @CHIP_IS_E3A0(%struct.bnx2x* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32**, i32*** @dump_num_registers, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %71

57:                                               ; preds = %44
  %58 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %59 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32**, i32*** @dump_num_registers, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %61, %48, %35, %22, %9
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
