; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_config_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_config_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i64 }

@ISPIF_VFE_m_IRQ_MASK_0_PIX0_MASK = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_0_PIX0_ENABLE = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_0_RDI0_MASK = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_0_RDI0_ENABLE = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_1_PIX1_MASK = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_1_PIX1_ENABLE = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_1_RDI1_MASK = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_1_RDI1_ENABLE = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_2_RDI2_MASK = common dso_local global i32 0, align 4
@ISPIF_VFE_m_IRQ_MASK_2_RDI2_ENABLE = common dso_local global i32 0, align 4
@ISPIF_IRQ_GLOBAL_CLEAR_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_device*, i32, i32, i32)* @ispif_config_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_config_irq(%struct.ispif_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ispif_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ispif_device* %0, %struct.ispif_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %186 [
    i32 132, label %11
    i32 130, label %46
    i32 131, label %81
    i32 129, label %116
    i32 128, label %151
  ]

11:                                               ; preds = %4
  %12 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %13 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @ISPIF_VFE_m_IRQ_MASK_0(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_0_PIX0_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_0_PIX0_ENABLE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %11
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %32 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @ISPIF_VFE_m_IRQ_MASK_0(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @writel_relaxed(i32 %30, i64 %36)
  %38 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_0_PIX0_ENABLE, align 4
  %39 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %40 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel_relaxed(i32 %38, i64 %44)
  br label %186

46:                                               ; preds = %4
  %47 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %48 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @ISPIF_VFE_m_IRQ_MASK_0(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @readl_relaxed(i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_0_RDI0_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_0_RDI0_ENABLE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %46
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %67 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @ISPIF_VFE_m_IRQ_MASK_0(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writel_relaxed(i32 %65, i64 %71)
  %73 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_0_RDI0_ENABLE, align 4
  %74 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %75 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @writel_relaxed(i32 %73, i64 %79)
  br label %186

81:                                               ; preds = %4
  %82 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %83 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @ISPIF_VFE_m_IRQ_MASK_1(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @readl_relaxed(i64 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_1_PIX1_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_1_PIX1_ENABLE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %81
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %102 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @ISPIF_VFE_m_IRQ_MASK_1(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = call i32 @writel_relaxed(i32 %100, i64 %106)
  %108 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_1_PIX1_ENABLE, align 4
  %109 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %110 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32 %112)
  %114 = add nsw i64 %111, %113
  %115 = call i32 @writel_relaxed(i32 %108, i64 %114)
  br label %186

116:                                              ; preds = %4
  %117 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %118 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @ISPIF_VFE_m_IRQ_MASK_1(i32 %120)
  %122 = add nsw i64 %119, %121
  %123 = call i32 @readl_relaxed(i64 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_1_RDI1_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %116
  %131 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_1_RDI1_ENABLE, align 4
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %130, %116
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %137 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i64 @ISPIF_VFE_m_IRQ_MASK_1(i32 %139)
  %141 = add nsw i64 %138, %140
  %142 = call i32 @writel_relaxed(i32 %135, i64 %141)
  %143 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_1_RDI1_ENABLE, align 4
  %144 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %145 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32 %147)
  %149 = add nsw i64 %146, %148
  %150 = call i32 @writel_relaxed(i32 %143, i64 %149)
  br label %186

151:                                              ; preds = %4
  %152 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %153 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i64 @ISPIF_VFE_m_IRQ_MASK_2(i32 %155)
  %157 = add nsw i64 %154, %156
  %158 = call i32 @readl_relaxed(i64 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_2_RDI2_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_2_RDI2_ENABLE, align 4
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %151
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %172 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i64 @ISPIF_VFE_m_IRQ_MASK_2(i32 %174)
  %176 = add nsw i64 %173, %175
  %177 = call i32 @writel_relaxed(i32 %170, i64 %176)
  %178 = load i32, i32* @ISPIF_VFE_m_IRQ_MASK_2_RDI2_ENABLE, align 4
  %179 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %180 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32 %182)
  %184 = add nsw i64 %181, %183
  %185 = call i32 @writel_relaxed(i32 %178, i64 %184)
  br label %186

186:                                              ; preds = %4, %169, %134, %99, %64, %29
  %187 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %188 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @ISPIF_IRQ_GLOBAL_CLEAR_CMD, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 1, i64 %191)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_MASK_0(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_MASK_1(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_MASK_2(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
