; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_init_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, %struct.efx_ef10_nic_data* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*, i32, i32, i32*)* }
%struct.efx_ef10_nic_data = type { i32, i32, i32, i64, i32 }

@EPERM = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"not permitted to restore PIO buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to restore PIO buffers (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ef10_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_init_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 3
  %8 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  store %struct.efx_ef10_nic_data* %8, %struct.efx_ef10_nic_data** %4, align 8
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %10 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = call i32 @efx_ef10_init_datapath_caps(%struct.efx_nic* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %110

20:                                               ; preds = %13
  %21 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %25 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %31 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %34 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @efx_ef10_alloc_vis(%struct.efx_nic* %29, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %110

41:                                               ; preds = %28
  %42 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %43 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %46 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %44
  %50 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %51 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %49
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %57 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @efx_ef10_alloc_piobufs(%struct.efx_nic* %55, i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = call i32 @efx_ef10_link_piobufs(%struct.efx_nic* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = call i32 @efx_ef10_free_piobufs(%struct.efx_nic* %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %78 = load i32, i32* @drv, align 4
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_dbg(%struct.efx_nic* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %95

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %88 = load i32, i32* @drv, align 4
  %89 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %90 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @netif_err(%struct.efx_nic* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %86, %83
  br label %95

95:                                               ; preds = %94, %76
  %96 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %97 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %49, %44
  %99 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %100 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32 (%struct.efx_nic*, i32, i32, i32*)*, i32 (%struct.efx_nic*, i32, i32, i32*)** %102, align 8
  %104 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %103(%struct.efx_nic* %104, i32 0, i32 %108, i32* null)
  store i32 %109, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %98, %39, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @efx_ef10_init_datapath_caps(%struct.efx_nic*) #1

declare dso_local i32 @efx_ef10_alloc_vis(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @efx_ef10_alloc_piobufs(%struct.efx_nic*, i64) #1

declare dso_local i32 @efx_ef10_link_piobufs(%struct.efx_nic*) #1

declare dso_local i32 @efx_ef10_free_piobufs(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
