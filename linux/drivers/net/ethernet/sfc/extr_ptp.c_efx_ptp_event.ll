; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i64, i32, i32*, i32 }

@MCDI_EVENT_CODE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Received PTP event but PTP not set up\0A\00", align 1
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PTP out of sequence event %d\0A\00", align 1
@CONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"PTP unknown event %d\0A\00", align 1
@MAX_EVENT_FRAGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"PTP too many event fragments\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ptp_event(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 2
  %9 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %8, align 8
  store %struct.efx_ptp_data* %9, %struct.efx_ptp_data** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MCDI_EVENT_CODE, align 4
  %13 = call i32 @EFX_QWORD_FIELD(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %15 = icmp ne %struct.efx_ptp_data* %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %2
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = load i32, i32* @drv, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_warn(%struct.efx_nic* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %16
  br label %120

31:                                               ; preds = %2
  %32 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %33 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %120

37:                                               ; preds = %31
  %38 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %39 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %45 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %63

46:                                               ; preds = %37
  %47 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %48 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = load i32, i32* @hw, align 4
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %61 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %52, %46
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %67 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %70 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %73, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CONT, align 4
  %77 = call i32 @MCDI_EVENT_FIELD(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %6, align 4
  switch i32 %80, label %93 [
    i32 128, label %81
    i32 130, label %85
    i32 129, label %89
  ]

81:                                               ; preds = %79
  %82 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %83 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %84 = call i32 @ptp_event_rx(%struct.efx_nic* %82, %struct.efx_ptp_data* %83)
  br label %101

85:                                               ; preds = %79
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %88 = call i32 @ptp_event_fault(%struct.efx_nic* %86, %struct.efx_ptp_data* %87)
  br label %101

89:                                               ; preds = %79
  %90 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %91 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %92 = call i32 @ptp_event_pps(%struct.efx_nic* %90, %struct.efx_ptp_data* %91)
  br label %101

93:                                               ; preds = %79
  %94 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %95 = load i32, i32* @hw, align 4
  %96 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %97 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %94, i32 %95, i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %93, %89, %85, %81
  %102 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %103 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %120

104:                                              ; preds = %63
  %105 = load i64, i64* @MAX_EVENT_FRAGS, align 8
  %106 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %107 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %112 = load i32, i32* @hw, align 4
  %113 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %114 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %111, i32 %112, i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %118 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %110, %104
  br label %120

120:                                              ; preds = %30, %36, %119, %101
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @MCDI_EVENT_FIELD(i32, i32) #1

declare dso_local i32 @ptp_event_rx(%struct.efx_nic*, %struct.efx_ptp_data*) #1

declare dso_local i32 @ptp_event_fault(%struct.efx_nic*, %struct.efx_ptp_data*) #1

declare dso_local i32 @ptp_event_pps(%struct.efx_nic*, %struct.efx_ptp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
