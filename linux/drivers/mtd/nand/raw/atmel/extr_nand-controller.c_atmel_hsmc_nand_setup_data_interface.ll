; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_hsmc_nand_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand = type { %struct.atmel_nand_cs*, %struct.TYPE_4__ }
%struct.atmel_nand_cs = type { %struct.atmel_smc_cs_conf, i32, %struct.TYPE_5__ }
%struct.atmel_smc_cs_conf = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.atmel_hsmc_nand_controller = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@ATMEL_NAND_NATIVE_RB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand*, i32, %struct.nand_data_interface*)* @atmel_hsmc_nand_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hsmc_nand_setup_data_interface(%struct.atmel_nand* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_nand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %9 = alloca %struct.atmel_smc_cs_conf, align 4
  %10 = alloca %struct.atmel_nand_cs*, align 8
  %11 = alloca i32, align 4
  store %struct.atmel_nand* %0, %struct.atmel_nand** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %12 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32 %15)
  store %struct.atmel_hsmc_nand_controller* %16, %struct.atmel_hsmc_nand_controller** %8, align 8
  %17 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %18 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %19 = call i32 @atmel_smc_nand_prepare_smcconf(%struct.atmel_nand* %17, %struct.nand_data_interface* %18, %struct.atmel_smc_cs_conf* %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %71

29:                                               ; preds = %24
  %30 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %30, i32 0, i32 0
  %32 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %32, i64 %34
  store %struct.atmel_nand_cs* %35, %struct.atmel_nand_cs** %10, align 8
  %36 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %10, align 8
  %37 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %36, i32 0, i32 0
  %38 = bitcast %struct.atmel_smc_cs_conf* %37 to i8*
  %39 = bitcast %struct.atmel_smc_cs_conf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %10, align 8
  %41 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ATMEL_NAND_NATIVE_RB, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %29
  %47 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %10, align 8
  %48 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ATMEL_HSMC_TIMINGS_RBNSEL(i32 %50)
  %52 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %10, align 8
  %53 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %46, %29
  %58 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %59 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %8, align 8
  %63 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %10, align 8
  %66 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.atmel_nand_cs*, %struct.atmel_nand_cs** %10, align 8
  %69 = getelementptr inbounds %struct.atmel_nand_cs, %struct.atmel_nand_cs* %68, i32 0, i32 0
  %70 = call i32 @atmel_hsmc_cs_conf_apply(i32 %61, i32 %64, i32 %67, %struct.atmel_smc_cs_conf* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %57, %28, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.atmel_hsmc_nand_controller* @to_hsmc_nand_controller(i32) #1

declare dso_local i32 @atmel_smc_nand_prepare_smcconf(%struct.atmel_nand*, %struct.nand_data_interface*, %struct.atmel_smc_cs_conf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ATMEL_HSMC_TIMINGS_RBNSEL(i32) #1

declare dso_local i32 @atmel_hsmc_cs_conf_apply(i32, i32, i32, %struct.atmel_smc_cs_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
