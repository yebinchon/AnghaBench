; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_int_type_0_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_int_type_0_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }

@PI_PDQ_K_REG_TYPE_0_STATUS = common dso_local global i32 0, align 4
@PI_TYPE_0_STAT_M_NXM = common dso_local global i32 0, align 4
@PI_TYPE_0_STAT_M_PM_PAR_ERR = common dso_local global i32 0, align 4
@PI_TYPE_0_STAT_M_BUS_PAR_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Non-Existent Memory Access Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: Packet Memory Parity Error\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Host Bus Parity Error\0A\00", align 1
@PI_K_FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Resetting adapter...\0A\00", align 1
@DFX_K_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"%s: Adapter reset failed!  Disabling adapter interrupts.\0A\00", align 1
@PI_PDQ_K_REG_HOST_INT_ENB = common dso_local global i32 0, align 4
@PI_HOST_INT_K_DISABLE_ALL_INTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: Adapter reset successful!\0A\00", align 1
@PI_TYPE_0_STAT_M_XMT_FLUSH = common dso_local global i32 0, align 4
@PI_PCTRL_M_XMT_DATA_FLUSH_DONE = common dso_local global i32 0, align 4
@PI_TYPE_0_STAT_M_STATE_CHANGE = common dso_local global i32 0, align 4
@PI_STATE_K_HALTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"%s: Controller has transitioned to HALTED state!\0A\00", align 1
@PI_STATE_K_LINK_AVAIL = common dso_local global i32 0, align 4
@PI_K_TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @dfx_int_type_0_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_int_type_0_process(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = load i32, i32* @PI_PDQ_K_REG_TYPE_0_STATUS, align 4
  %7 = call i32 @dfx_port_read_long(%struct.TYPE_12__* %5, i32 %6, i32* %3)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = load i32, i32* @PI_PDQ_K_REG_TYPE_0_STATUS, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @dfx_port_write_long(%struct.TYPE_12__* %8, i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PI_TYPE_0_STAT_M_NXM, align 4
  %14 = load i32, i32* @PI_TYPE_0_STAT_M_PM_PAR_ERR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PI_TYPE_0_STAT_M_BUS_PAR_ERR, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PI_TYPE_0_STAT_M_NXM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PI_TYPE_0_STAT_M_PM_PAR_ERR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PI_TYPE_0_STAT_M_BUS_PAR_ERR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i8*, i8** @PI_K_FALSE, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = call i64 @dfx_adap_init(%struct.TYPE_12__* %68, i32 0)
  %70 = load i64, i64* @DFX_K_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %56
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = load i32, i32* @PI_PDQ_K_REG_HOST_INT_ENB, align 4
  %81 = load i32, i32* @PI_HOST_INT_K_DISABLE_ALL_INTS, align 4
  %82 = call i32 @dfx_port_write_long(%struct.TYPE_12__* %79, i32 %80, i32 %81)
  br label %167

83:                                               ; preds = %56
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %167

90:                                               ; preds = %1
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @PI_TYPE_0_STAT_M_XMT_FLUSH, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i8*, i8** @PI_K_FALSE, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = call i32 @dfx_xmt_flush(%struct.TYPE_12__* %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = load i32, i32* @PI_PCTRL_M_XMT_DATA_FLUSH_DONE, align 4
  %103 = call i32 @dfx_hw_port_ctrl_req(%struct.TYPE_12__* %101, i32 %102, i32 0, i32 0, i32* null)
  br label %104

104:                                              ; preds = %95, %90
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @PI_TYPE_0_STAT_M_STATE_CHANGE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %167

109:                                              ; preds = %104
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = call i32 @dfx_hw_adap_state_rd(%struct.TYPE_12__* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @PI_STATE_K_HALTED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %157

115:                                              ; preds = %109
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = call i32 @dfx_int_pr_halt_id(%struct.TYPE_12__* %122)
  %124 = load i8*, i8** @PI_K_FALSE, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = call i64 @dfx_adap_init(%struct.TYPE_12__* %135, i32 0)
  %137 = load i64, i64* @DFX_K_SUCCESS, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %115
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = load i32, i32* @PI_PDQ_K_REG_HOST_INT_ENB, align 4
  %148 = load i32, i32* @PI_HOST_INT_K_DISABLE_ALL_INTS, align 4
  %149 = call i32 @dfx_port_write_long(%struct.TYPE_12__* %146, i32 %147, i32 %148)
  br label %167

150:                                              ; preds = %115
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  br label %166

157:                                              ; preds = %109
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @PI_STATE_K_LINK_AVAIL, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i8*, i8** @PI_K_TRUE, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %157
  br label %166

166:                                              ; preds = %165, %150
  br label %167

167:                                              ; preds = %72, %83, %139, %166, %104
  ret void
}

declare dso_local i32 @dfx_port_read_long(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @dfx_adap_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dfx_xmt_flush(%struct.TYPE_12__*) #1

declare dso_local i32 @dfx_hw_port_ctrl_req(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dfx_hw_adap_state_rd(%struct.TYPE_12__*) #1

declare dso_local i32 @dfx_int_pr_halt_id(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
