; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i64, i32, i32, i64, i64 }
%struct.msg = type { i64, i32, i64, i8*, i8*, i32 }

@PORT_CONFIG_WRITE = common dso_local global i8* null, align 8
@HSS_CONFIG_TX_PCR = common dso_local global i32 0, align 4
@PCR_FRM_PULSE_DISABLED = common dso_local global i32 0, align 4
@PCR_MSB_ENDIAN = common dso_local global i32 0, align 4
@PCR_TX_DATA_ENABLE = common dso_local global i32 0, align 4
@PCR_SOF_NO_FBIT = common dso_local global i32 0, align 4
@CLOCK_INT = common dso_local global i64 0, align 8
@PCR_SYNC_CLK_DIR_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HSS_SET_TX_PCR\00", align 1
@HSS_CONFIG_RX_PCR = common dso_local global i32 0, align 4
@PCR_DCLK_EDGE_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"HSS_SET_RX_PCR\00", align 1
@HSS_CONFIG_CORE_CR = common dso_local global i32 0, align 4
@CCR_LOOPBACK = common dso_local global i32 0, align 4
@CCR_SECOND_HSS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"HSS_SET_CORE_CR\00", align 1
@HSS_CONFIG_CLOCK_CR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"HSS_SET_CLOCK_CR\00", align 1
@HSS_CONFIG_TX_FCR = common dso_local global i32 0, align 4
@FRAME_OFFSET = common dso_local global i8* null, align 8
@FRAME_SIZE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"HSS_SET_TX_FCR\00", align 1
@HSS_CONFIG_RX_FCR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"HSS_SET_RX_FCR\00", align 1
@PORT_CONFIG_LOAD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"HSS_LOAD_CONFIG\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"HSS-%i: HSS_LOAD_CONFIG failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"FLUSH_IT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @hss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hss_config(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.msg, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = call i32 @memset(%struct.msg* %3, i32 0, i32 48)
  %5 = load i8*, i8** @PORT_CONFIG_WRITE, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* @HSS_CONFIG_TX_PCR, align 4
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @PCR_FRM_PULSE_DISABLED, align 4
  %15 = load i32, i32* @PCR_MSB_ENDIAN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PCR_TX_DATA_ENABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PCR_SOF_NO_FBIT, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.port*, %struct.port** %2, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CLOCK_INT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @PCR_SYNC_CLK_DIR_OUTPUT, align 4
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.port*, %struct.port** %2, align 8
  %34 = call i32 @hss_npe_send(%struct.port* %33, %struct.msg* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @HSS_CONFIG_RX_PCR, align 4
  %36 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 5
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @PCR_TX_DATA_ENABLE, align 4
  %38 = load i32, i32* @PCR_DCLK_EDGE_RISING, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %41, %39
  store i32 %42, i32* %40, align 8
  %43 = load %struct.port*, %struct.port** %2, align 8
  %44 = call i32 @hss_npe_send(%struct.port* %43, %struct.msg* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @memset(%struct.msg* %3, i32 0, i32 48)
  %46 = load i8*, i8** @PORT_CONFIG_WRITE, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load %struct.port*, %struct.port** %2, align 8
  %50 = getelementptr inbounds %struct.port, %struct.port* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @HSS_CONFIG_CORE_CR, align 4
  %54 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 5
  store i32 %53, i32* %54, align 8
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %32
  %60 = load i32, i32* @CCR_LOOPBACK, align 4
  br label %62

61:                                               ; preds = %32
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load %struct.port*, %struct.port** %2, align 8
  %65 = getelementptr inbounds %struct.port, %struct.port* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @CCR_SECOND_HSS, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = or i32 %63, %72
  %74 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.port*, %struct.port** %2, align 8
  %76 = call i32 @hss_npe_send(%struct.port* %75, %struct.msg* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @memset(%struct.msg* %3, i32 0, i32 48)
  %78 = load i8*, i8** @PORT_CONFIG_WRITE, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load %struct.port*, %struct.port** %2, align 8
  %82 = getelementptr inbounds %struct.port, %struct.port* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* @HSS_CONFIG_CLOCK_CR, align 4
  %86 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 5
  store i32 %85, i32* %86, align 8
  %87 = load %struct.port*, %struct.port** %2, align 8
  %88 = getelementptr inbounds %struct.port, %struct.port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.port*, %struct.port** %2, align 8
  %92 = call i32 @hss_npe_send(%struct.port* %91, %struct.msg* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @memset(%struct.msg* %3, i32 0, i32 48)
  %94 = load i8*, i8** @PORT_CONFIG_WRITE, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = load %struct.port*, %struct.port** %2, align 8
  %98 = getelementptr inbounds %struct.port, %struct.port* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* @HSS_CONFIG_TX_FCR, align 4
  %102 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 5
  store i32 %101, i32* %102, align 8
  %103 = load i8*, i8** @FRAME_OFFSET, align 8
  %104 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 4
  store i8* %103, i8** %104, align 8
  %105 = load i8*, i8** @FRAME_SIZE, align 8
  %106 = getelementptr i8, i8* %105, i64 -1
  %107 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 3
  store i8* %106, i8** %107, align 8
  %108 = load %struct.port*, %struct.port** %2, align 8
  %109 = call i32 @hss_npe_send(%struct.port* %108, %struct.msg* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %110 = call i32 @memset(%struct.msg* %3, i32 0, i32 48)
  %111 = load i8*, i8** @PORT_CONFIG_WRITE, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load %struct.port*, %struct.port** %2, align 8
  %115 = getelementptr inbounds %struct.port, %struct.port* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* @HSS_CONFIG_RX_FCR, align 4
  %119 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 5
  store i32 %118, i32* %119, align 8
  %120 = load i8*, i8** @FRAME_OFFSET, align 8
  %121 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 4
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** @FRAME_SIZE, align 8
  %123 = getelementptr i8, i8* %122, i64 -1
  %124 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 3
  store i8* %123, i8** %124, align 8
  %125 = load %struct.port*, %struct.port** %2, align 8
  %126 = call i32 @hss_npe_send(%struct.port* %125, %struct.msg* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %127 = load %struct.port*, %struct.port** %2, align 8
  %128 = call i32 @hss_config_set_lut(%struct.port* %127)
  %129 = call i32 @memset(%struct.msg* %3, i32 0, i32 48)
  %130 = load i64, i64* @PORT_CONFIG_LOAD, align 8
  %131 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  %132 = load %struct.port*, %struct.port** %2, align 8
  %133 = getelementptr inbounds %struct.port, %struct.port* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i64 %134, i64* %135, align 8
  %136 = load %struct.port*, %struct.port** %2, align 8
  %137 = call i32 @hss_npe_send(%struct.port* %136, %struct.msg* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %138 = load %struct.port*, %struct.port** %2, align 8
  %139 = getelementptr inbounds %struct.port, %struct.port* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @npe_recv_message(i32 %140, %struct.msg* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %71
  %144 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PORT_CONFIG_LOAD, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148, %143, %71
  %153 = load %struct.port*, %struct.port** %2, align 8
  %154 = getelementptr inbounds %struct.port, %struct.port* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %155)
  %157 = call i32 (...) @BUG()
  br label %158

158:                                              ; preds = %152, %148
  %159 = load %struct.port*, %struct.port** %2, align 8
  %160 = getelementptr inbounds %struct.port, %struct.port* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @npe_recv_message(i32 %161, %struct.msg* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.msg*, i32, i32) #1

declare dso_local i32 @hss_npe_send(%struct.port*, %struct.msg*, i8*) #1

declare dso_local i32 @hss_config_set_lut(%struct.port*) #1

declare dso_local i64 @npe_recv_message(i32, %struct.msg*, i8*) #1

declare dso_local i32 @pr_crit(i8*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
