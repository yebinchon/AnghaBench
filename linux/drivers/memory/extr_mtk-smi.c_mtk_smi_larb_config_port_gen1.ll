; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_larb_config_port_gen1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mtk-smi.c_mtk_smi_larb_config_port_gen1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_smi_larb = type { i64, i32*, %struct.device*, %struct.mtk_smi_larb_gen* }
%struct.mtk_smi_larb_gen = type { i32* }
%struct.mtk_smi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @mtk_smi_larb_config_port_gen1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_smi_larb_config_port_gen1(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mtk_smi_larb*, align 8
  %4 = alloca %struct.mtk_smi_larb_gen*, align 8
  %5 = alloca %struct.mtk_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i8* @dev_get_drvdata(%struct.device* %11)
  %13 = bitcast i8* %12 to %struct.mtk_smi_larb*
  store %struct.mtk_smi_larb* %13, %struct.mtk_smi_larb** %3, align 8
  %14 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %14, i32 0, i32 3
  %16 = load %struct.mtk_smi_larb_gen*, %struct.mtk_smi_larb_gen** %15, align 8
  store %struct.mtk_smi_larb_gen* %16, %struct.mtk_smi_larb_gen** %4, align 8
  %17 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %17, i32 0, i32 2
  %19 = load %struct.device*, %struct.device** %18, align 8
  %20 = call i8* @dev_get_drvdata(%struct.device* %19)
  %21 = bitcast i8* %20 to %struct.mtk_smi*
  store %struct.mtk_smi* %21, %struct.mtk_smi** %5, align 8
  %22 = load %struct.mtk_smi_larb_gen*, %struct.mtk_smi_larb_gen** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_smi_larb_gen, %struct.mtk_smi_larb_gen* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %3, align 8
  %26 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mtk_smi_larb_gen*, %struct.mtk_smi_larb_gen** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_smi_larb_gen, %struct.mtk_smi_larb_gen* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %3, align 8
  %34 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mtk_smi_larb_gen*, %struct.mtk_smi_larb_gen** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_smi_larb_gen, %struct.mtk_smi_larb_gen* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %38, %46
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %92, %1
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %48
  %53 = load %struct.mtk_smi_larb*, %struct.mtk_smi_larb** %3, align 8
  %54 = getelementptr inbounds %struct.mtk_smi_larb, %struct.mtk_smi_larb* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @SMI_SECUR_CON_VAL_VIRT(i32 %62)
  store i32 %63, i32* %9, align 4
  br label %65

64:                                               ; preds = %52
  br label %92

65:                                               ; preds = %61
  %66 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %67 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @REG_SMI_SECUR_CON_ADDR(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @SMI_SECUR_CON_VAL_MSK(i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @SMI_SECUR_CON_VAL_DOMAIN(i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.mtk_smi*, %struct.mtk_smi** %5, align 8
  %86 = getelementptr inbounds %struct.mtk_smi, %struct.mtk_smi* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @REG_SMI_SECUR_CON_ADDR(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @writel(i32 %84, i64 %90)
  br label %92

92:                                               ; preds = %65, %64
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %48

97:                                               ; preds = %48
  ret void
}

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SMI_SECUR_CON_VAL_VIRT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_SMI_SECUR_CON_ADDR(i32) #1

declare dso_local i32 @SMI_SECUR_CON_VAL_MSK(i32) #1

declare dso_local i32 @SMI_SECUR_CON_VAL_DOMAIN(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
