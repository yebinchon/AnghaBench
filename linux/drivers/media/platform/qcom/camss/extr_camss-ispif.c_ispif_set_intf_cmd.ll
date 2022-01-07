; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_set_intf_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_set_intf_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RDI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_device*, i64, i32, i64, i64)* @ispif_set_intf_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_set_intf_cmd(%struct.ispif_device* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ispif_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.ispif_device* %0, %struct.ispif_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @RDI2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %5
  %16 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %17 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %21, i32** %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = mul i64 %22, 2
  %24 = add i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 3, %25
  %27 = xor i32 %26, -1
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = mul i64 %32, 2
  %34 = add i64 %33, 8
  %35 = shl i64 %31, %34
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = or i64 %38, %35
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = call i32 (...) @wmb()
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %45 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @ISPIF_VFE_m_INTF_CMD_1(i64 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @writel_relaxed(i32 %43, i64 %49)
  %51 = call i32 (...) @wmb()
  br label %95

52:                                               ; preds = %5
  %53 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %54 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32* %58, i32** %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = mul i64 %59, 2
  %61 = load i32, i32* %8, align 4
  %62 = mul i32 %61, 8
  %63 = zext i32 %62 to i64
  %64 = add i64 %60, %63
  %65 = trunc i64 %64 to i32
  %66 = shl i32 3, %65
  %67 = xor i32 %66, -1
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = mul i64 %72, 2
  %74 = load i32, i32* %8, align 4
  %75 = mul i32 %74, 8
  %76 = zext i32 %75 to i64
  %77 = add i64 %73, %76
  %78 = shl i64 %71, %77
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = or i64 %81, %78
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = call i32 (...) @wmb()
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %88 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @ISPIF_VFE_m_INTF_CMD_0(i64 %90)
  %92 = add nsw i64 %89, %91
  %93 = call i32 @writel_relaxed(i32 %86, i64 %92)
  %94 = call i32 (...) @wmb()
  br label %95

95:                                               ; preds = %52, %15
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ISPIF_VFE_m_INTF_CMD_1(i64) #1

declare dso_local i64 @ISPIF_VFE_m_INTF_CMD_0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
