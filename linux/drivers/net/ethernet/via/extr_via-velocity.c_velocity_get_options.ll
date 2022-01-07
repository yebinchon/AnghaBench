; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_opt = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@rx_thresh = common dso_local global i32* null, align 8
@RX_THRESH_MIN = common dso_local global i32 0, align 4
@RX_THRESH_MAX = common dso_local global i32 0, align 4
@RX_THRESH_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rx_thresh\00", align 1
@DMA_length = common dso_local global i32* null, align 8
@DMA_LENGTH_MIN = common dso_local global i32 0, align 4
@DMA_LENGTH_MAX = common dso_local global i32 0, align 4
@DMA_LENGTH_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"DMA_length\00", align 1
@RxDescriptors = common dso_local global i32* null, align 8
@RX_DESC_MIN = common dso_local global i32 0, align 4
@RX_DESC_MAX = common dso_local global i32 0, align 4
@RX_DESC_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"RxDescriptors\00", align 1
@TxDescriptors = common dso_local global i32* null, align 8
@TX_DESC_MIN = common dso_local global i32 0, align 4
@TX_DESC_MAX = common dso_local global i32 0, align 4
@TX_DESC_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"TxDescriptors\00", align 1
@flow_control = common dso_local global i32* null, align 8
@FLOW_CNTL_MIN = common dso_local global i32 0, align 4
@FLOW_CNTL_MAX = common dso_local global i32 0, align 4
@FLOW_CNTL_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"flow_control\00", align 1
@IP_byte_align = common dso_local global i32* null, align 8
@IP_ALIG_DEF = common dso_local global i32 0, align 4
@VELOCITY_FLAGS_IP_ALIGN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"IP_byte_align\00", align 1
@speed_duplex = common dso_local global i32* null, align 8
@MED_LNK_MIN = common dso_local global i32 0, align 4
@MED_LNK_MAX = common dso_local global i32 0, align 4
@MED_LNK_DEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Media link mode\00", align 1
@wol_opts = common dso_local global i32* null, align 8
@WOL_OPT_MIN = common dso_local global i32 0, align 4
@WOL_OPT_MAX = common dso_local global i32 0, align 4
@WOL_OPT_DEF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Wake On Lan options\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_opt*, i32, i8*)* @velocity_get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @velocity_get_options(%struct.velocity_opt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.velocity_opt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.velocity_opt* %0, %struct.velocity_opt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %8 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %7, i32 0, i32 0
  %9 = load i32*, i32** @rx_thresh, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RX_THRESH_MIN, align 4
  %15 = load i32, i32* @RX_THRESH_MAX, align 4
  %16 = load i32, i32* @RX_THRESH_DEF, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @velocity_set_int_opt(i32* %8, i32 %13, i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %20 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %19, i32 0, i32 1
  %21 = load i32*, i32** @DMA_length, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_LENGTH_MIN, align 4
  %27 = load i32, i32* @DMA_LENGTH_MAX, align 4
  %28 = load i32, i32* @DMA_LENGTH_DEF, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @velocity_set_int_opt(i32* %20, i32 %25, i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %32 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %31, i32 0, i32 2
  %33 = load i32*, i32** @RxDescriptors, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RX_DESC_MIN, align 4
  %39 = load i32, i32* @RX_DESC_MAX, align 4
  %40 = load i32, i32* @RX_DESC_DEF, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @velocity_set_int_opt(i32* %32, i32 %37, i32 %38, i32 %39, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %44 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %43, i32 0, i32 3
  %45 = load i32*, i32** @TxDescriptors, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TX_DESC_MIN, align 4
  %51 = load i32, i32* @TX_DESC_MAX, align 4
  %52 = load i32, i32* @TX_DESC_DEF, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @velocity_set_int_opt(i32* %44, i32 %49, i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %56 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %55, i32 0, i32 4
  %57 = load i32*, i32** @flow_control, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FLOW_CNTL_MIN, align 4
  %63 = load i32, i32* @FLOW_CNTL_MAX, align 4
  %64 = load i32, i32* @FLOW_CNTL_DEF, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @velocity_set_int_opt(i32* %56, i32 %61, i32 %62, i32 %63, i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %68 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %67, i32 0, i32 7
  %69 = load i32*, i32** @IP_byte_align, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IP_ALIG_DEF, align 4
  %75 = load i32, i32* @VELOCITY_FLAGS_IP_ALIGN, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @velocity_set_bool_opt(i32* %68, i32 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %79 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %78, i32 0, i32 6
  %80 = load i32*, i32** @speed_duplex, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MED_LNK_MIN, align 4
  %86 = load i32, i32* @MED_LNK_MAX, align 4
  %87 = load i32, i32* @MED_LNK_DEF, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @velocity_set_int_opt(i32* %79, i32 %84, i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %88)
  %90 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %91 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %90, i32 0, i32 5
  %92 = load i32*, i32** @wol_opts, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @WOL_OPT_MIN, align 4
  %98 = load i32, i32* @WOL_OPT_MAX, align 4
  %99 = load i32, i32* @WOL_OPT_DEF, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @velocity_set_int_opt(i32* %91, i32 %96, i32 %97, i32 %98, i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  %102 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %103 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, -4
  %106 = load %struct.velocity_opt*, %struct.velocity_opt** %4, align 8
  %107 = getelementptr inbounds %struct.velocity_opt, %struct.velocity_opt* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  ret void
}

declare dso_local i32 @velocity_set_int_opt(i32*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @velocity_set_bool_opt(i32*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
