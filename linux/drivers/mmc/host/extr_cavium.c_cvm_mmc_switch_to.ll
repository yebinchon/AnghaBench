; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_switch_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_switch_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_slot = type { i64, i32, i32, i32, i32, %struct.cvm_mmc_host* }
%struct.cvm_mmc_host = type { i64, i64, %struct.cvm_mmc_slot** }

@MIO_EMM_SAMPLE_CMD_CNT = common dso_local global i32 0, align 4
@MIO_EMM_SAMPLE_DAT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_slot*)* @cvm_mmc_switch_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_mmc_switch_to(%struct.cvm_mmc_slot* %0) #0 {
  %2 = alloca %struct.cvm_mmc_slot*, align 8
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca %struct.cvm_mmc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cvm_mmc_slot* %0, %struct.cvm_mmc_slot** %2, align 8
  %7 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %8 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %7, i32 0, i32 5
  %9 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %8, align 8
  store %struct.cvm_mmc_host* %9, %struct.cvm_mmc_host** %3, align 8
  %10 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %11 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %107

18:                                               ; preds = %1
  %19 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %24, i32 0, i32 2
  %26 = load %struct.cvm_mmc_slot**, %struct.cvm_mmc_slot*** %25, align 8
  %27 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %26, i64 %29
  %31 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %30, align 8
  %32 = icmp ne %struct.cvm_mmc_slot* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %23
  %34 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %34, i32 0, i32 2
  %36 = load %struct.cvm_mmc_slot**, %struct.cvm_mmc_slot*** %35, align 8
  %37 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %36, i64 %39
  %41 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %40, align 8
  store %struct.cvm_mmc_slot* %41, %struct.cvm_mmc_slot** %4, align 8
  %42 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %46 = call i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host* %45)
  %47 = add nsw i64 %44, %46
  %48 = call i8* @readq(i64 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %4, align 8
  %51 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %53 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %56 = call i64 @MIO_EMM_RCA(%struct.cvm_mmc_host* %55)
  %57 = add nsw i64 %54, %56
  %58 = call i8* @readq(i64 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %4, align 8
  %61 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %33, %23, %18
  %63 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %64 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %70 = call i64 @MIO_EMM_RCA(%struct.cvm_mmc_host* %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writeq(i32 %65, i64 %71)
  %73 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %74 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  %76 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %77 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @set_bus_id(i32* %6, i64 %78)
  %80 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @do_switch(%struct.cvm_mmc_host* %80, i32 %81)
  %83 = load i32, i32* @MIO_EMM_SAMPLE_CMD_CNT, align 4
  %84 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %85 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FIELD_PREP(i32 %83, i32 %86)
  %88 = load i32, i32* @MIO_EMM_SAMPLE_DAT_CNT, align 4
  %89 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %90 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @FIELD_PREP(i32 %88, i32 %91)
  %93 = or i32 %87, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %96 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %99 = call i64 @MIO_EMM_SAMPLE(%struct.cvm_mmc_host* %98)
  %100 = add nsw i64 %97, %99
  %101 = call i32 @writeq(i32 %94, i64 %100)
  %102 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %103 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %106 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %62, %17
  ret void
}

declare dso_local i8* @readq(i64) #1

declare dso_local i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host*) #1

declare dso_local i64 @MIO_EMM_RCA(%struct.cvm_mmc_host*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @set_bus_id(i32*, i64) #1

declare dso_local i32 @do_switch(%struct.cvm_mmc_host*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i64 @MIO_EMM_SAMPLE(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
