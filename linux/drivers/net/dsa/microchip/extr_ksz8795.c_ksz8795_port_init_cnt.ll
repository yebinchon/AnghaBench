; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_port_init_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_port_init_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ksz_device*, i32, i64, i32*, i32*)*, i32 (%struct.ksz_device*, i32, i64, i32*)* }
%struct.TYPE_3__ = type { %struct.ksz_port_mib }
%struct.ksz_port_mib = type { i64, i32* }

@REG_SW_CTRL_6 = common dso_local global i32 0, align 4
@SW_MIB_COUNTER_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32)* @ksz8795_port_init_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_port_init_cnt(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_port_mib*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ksz_port_mib* %12, %struct.ksz_port_mib** %5, align 8
  %13 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %14 = load i32, i32* @REG_SW_CTRL_6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = call i32 @ksz_cfg(%struct.ksz_device* %13, i32 %14, i32 %16, i32 1)
  %18 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %19 = load i32, i32* @REG_SW_CTRL_6, align 4
  %20 = load i32, i32* @SW_MIB_COUNTER_FLUSH, align 4
  %21 = call i32 @ksz_cfg(%struct.ksz_device* %18, i32 %19, i32 %20, i32 1)
  %22 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %23 = load i32, i32* @REG_SW_CTRL_6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = call i32 @ksz_cfg(%struct.ksz_device* %22, i32 %23, i32 %25, i32 0)
  %27 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %28 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %37, %2
  %30 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %31 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %34 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %39 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32 (%struct.ksz_device*, i32, i64, i32*)*, i32 (%struct.ksz_device*, i32, i64, i32*)** %41, align 8
  %43 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %46 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %49 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %52 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = call i32 %42(%struct.ksz_device* %43, i32 %44, i64 %47, i32* %54)
  %56 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %57 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %29

60:                                               ; preds = %29
  br label %61

61:                                               ; preds = %69, %60
  %62 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %63 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %66 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %61
  %70 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %71 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.ksz_device*, i32, i64, i32*, i32*)*, i32 (%struct.ksz_device*, i32, i64, i32*, i32*)** %73, align 8
  %75 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %78 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %81 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %84 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = call i32 %74(%struct.ksz_device* %75, i32 %76, i64 %79, i32* null, i32* %86)
  %88 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %89 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %61

92:                                               ; preds = %61
  %93 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %94 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %96 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %99 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memset(i32* %97, i32 0, i32 %102)
  ret void
}

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
