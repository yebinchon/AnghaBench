; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_mx25_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_mx25_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FLASH_FLAG_32BIT_ADDR = common dso_local global i32 0, align 4
@CFG_READ_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@CFG_WRITE_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@CFG_ERASESEC_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@SPINOR_OP_RDSR = common dso_local global i32 0, align 4
@MX25_STATUS_QE = common dso_local global i32 0, align 4
@SPINOR_OP_WRSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_mx25_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_mx25_config(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  %9 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %10 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %15 = call i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %93

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FLASH_FLAG_32BIT_ADDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %27 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %26, i32 0, i32 3
  %28 = call i32 @stfsm_mx25_en_32bit_addr_seq(i32* %27)
  %29 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %30 = call i32 @stfsm_can_handle_soc_reset(%struct.stfsm* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %35 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %40 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %39, i32 1)
  br label %49

41:                                               ; preds = %33
  %42 = load i32, i32* @CFG_READ_TOGGLE_32BIT_ADDR, align 4
  %43 = load i32, i32* @CFG_WRITE_TOGGLE_32BIT_ADDR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CFG_ERASESEC_TOGGLE_32BIT_ADDR, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %48 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %41, %38
  br label %50

50:                                               ; preds = %49, %20
  %51 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %52 = load i32, i32* @SPINOR_OP_RDSR, align 4
  %53 = call i32 @stfsm_read_status(%struct.stfsm* %51, i32 %52, i32* %6, i32 1)
  %54 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %55 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 3
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %77

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MX25_STATUS_QE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @MX25_STATUS_QE, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %73 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @stfsm_write_status(%struct.stfsm* %72, i32 %73, i32 %74, i32 1, i32 1)
  br label %76

76:                                               ; preds = %68, %63
  br label %92

77:                                               ; preds = %50
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @MX25_STATUS_QE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* @MX25_STATUS_QE, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %88 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @stfsm_write_status(%struct.stfsm* %87, i32 %88, i32 %89, i32 1, i32 1)
  br label %91

91:                                               ; preds = %82, %77
  br label %92

92:                                               ; preds = %91, %76
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %18
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm*) #1

declare dso_local i32 @stfsm_mx25_en_32bit_addr_seq(i32*) #1

declare dso_local i32 @stfsm_can_handle_soc_reset(%struct.stfsm*) #1

declare dso_local i32 @stfsm_enter_32bit_addr(%struct.stfsm*, i32) #1

declare dso_local i32 @stfsm_read_status(%struct.stfsm*, i32, i32*, i32) #1

declare dso_local i32 @stfsm_write_status(%struct.stfsm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
