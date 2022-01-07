; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32, %struct.vio_driver_state }
%struct.vio_driver_state = type { %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64 }
%struct.vio_dring_data = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"vnet_rx stype_env[%04x] seq[%016llx] rcv_nxt[%016llx]\0A\00", align 1
@VIO_DRING_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"RX out of sequence seq[0x%llx] rcv_nxt[0x%llx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, i8*, i32*, i32)* @vnet_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_rx(%struct.vnet_port* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vio_dring_data*, align 8
  %11 = alloca %struct.vio_dring_state*, align 8
  %12 = alloca %struct.vio_driver_state*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.vio_dring_data*
  store %struct.vio_dring_data* %14, %struct.vio_dring_data** %10, align 8
  %15 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %16 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %16, i32 0, i32 0
  %18 = load %struct.vio_dring_state*, %struct.vio_dring_state** %17, align 8
  %19 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %20 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %18, i64 %19
  store %struct.vio_dring_state* %20, %struct.vio_dring_state** %11, align 8
  %21 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %22 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %21, i32 0, i32 1
  store %struct.vio_driver_state* %22, %struct.vio_driver_state** %12, align 8
  %23 = load i32, i32* @DATA, align 4
  %24 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %25 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %29 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vio_dring_state*, %struct.vio_dring_state** %11, align 8
  %32 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @viodbg(i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30, i64 %33)
  %35 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %36 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VIO_DRING_DATA, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

45:                                               ; preds = %4
  %46 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %47 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vio_dring_state*, %struct.vio_dring_state** %11, align 8
  %50 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %58 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vio_dring_state*, %struct.vio_dring_state** %11, align 8
  %61 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %62)
  store i32 0, i32* %5, align 4
  br label %86

64:                                               ; preds = %45
  %65 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %66 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.vio_dring_state*, %struct.vio_dring_state** %11, align 8
  %71 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %76 = load %struct.vio_dring_state*, %struct.vio_dring_state** %11, align 8
  %77 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %78 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vio_dring_data*, %struct.vio_dring_data** %10, align 8
  %81 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @vnet_walk_rx(%struct.vnet_port* %75, %struct.vio_dring_state* %76, i32 %79, i32 %82, i32* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %74, %56, %44
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @viodbg(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @vnet_walk_rx(%struct.vnet_port*, %struct.vio_dring_state*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
