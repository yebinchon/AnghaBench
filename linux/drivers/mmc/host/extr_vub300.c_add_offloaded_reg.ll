; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_add_offloaded_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_add_offloaded_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i32 }
%struct.offload_registers_access = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*, %struct.offload_registers_access*)* @add_offloaded_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_offloaded_reg(%struct.vub300_mmc_host* %0, %struct.offload_registers_access* %1) #0 {
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca %struct.offload_registers_access*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %3, align 8
  store %struct.offload_registers_access* %1, %struct.offload_registers_access** %4, align 8
  %9 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %10 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 3, %13
  %15 = shl i32 %14, 15
  %16 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %17 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 255, %20
  %22 = shl i32 %21, 7
  %23 = or i32 %15, %22
  %24 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %25 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 254, %28
  %30 = ashr i32 %29, 1
  %31 = or i32 %23, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  %33 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %34 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 112, %37
  %39 = ashr i32 %38, 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %6, align 8
  %41 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %118, %2
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %7, align 8
  %47 = icmp ult i64 0, %45
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 1, %55
  br label %57

57:                                               ; preds = %48, %44
  %58 = phi i1 [ false, %44 ], [ %56, %48 ]
  br i1 %58, label %59, label %121

59:                                               ; preds = %57
  %60 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %61 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %59
  %70 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %71 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %118

79:                                               ; preds = %69
  %80 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %81 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %90 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %79
  %96 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %97 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %102 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  store i32 %100, i32* %106, align 8
  %107 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %108 = getelementptr inbounds %struct.offload_registers_access, %struct.offload_registers_access* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %113 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  store i32 %111, i32* %117, align 4
  br label %126

118:                                              ; preds = %69, %59
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %44

121:                                              ; preds = %57
  %122 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %123 = load %struct.offload_registers_access*, %struct.offload_registers_access** %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @__add_offloaded_reg_to_fifo(%struct.vub300_mmc_host* %122, %struct.offload_registers_access* %123, i64 %124)
  br label %126

126:                                              ; preds = %121, %95
  ret void
}

declare dso_local i32 @__add_offloaded_reg_to_fifo(%struct.vub300_mmc_host*, %struct.offload_registers_access*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
