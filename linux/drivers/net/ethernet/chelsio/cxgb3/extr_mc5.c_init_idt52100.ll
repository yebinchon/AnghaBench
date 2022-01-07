; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_init_idt52100.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_init_idt52100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { %struct.adapter* }
%struct.adapter = type { i32 }

@A_MC5_DB_RSP_LATENCY = common dso_local global i32 0, align 4
@A_MC5_DB_PART_ID_INDEX = common dso_local global i32 0, align 4
@A_MC5_DB_POPEN_DATA_WR_CMD = common dso_local global i32 0, align 4
@IDT_CMD_WRITE = common dso_local global i32 0, align 4
@A_MC5_DB_POPEN_MASK_WR_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_AOPEN_SRCH_CMD = common dso_local global i32 0, align 4
@IDT_CMD_SEARCH = common dso_local global i32 0, align 4
@A_MC5_DB_AOPEN_LRN_CMD = common dso_local global i32 0, align 4
@IDT_CMD_LEARN = common dso_local global i32 0, align 4
@A_MC5_DB_SYN_SRCH_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_SYN_LRN_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ACK_SRCH_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ACK_LRN_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ILOOKUP_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ELOOKUP_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_DATA_WRITE_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_DATA_READ_CMD = common dso_local global i32 0, align 4
@IDT_CMD_READ = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_CONFIG = common dso_local global i32 0, align 4
@DBGI_MODE_IDT52100 = common dso_local global i32 0, align 4
@IDT_LAR_MODE144 = common dso_local global i32 0, align 4
@IDT_LAR_ADR0 = common dso_local global i64 0, align 8
@IDT_SSR0_ADR0 = common dso_local global i64 0, align 8
@IDT_SSR1_ADR0 = common dso_local global i64 0, align 8
@IDT_GMR_BASE_ADR0 = common dso_local global i64 0, align 8
@IDT_SCR_ADR0 = common dso_local global i64 0, align 8
@IDT_MSKARY_BASE_ADR0 = common dso_local global i32 0, align 4
@IDT_DATARY_BASE_ADR0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc5*)* @init_idt52100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_idt52100(%struct.mc5* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mc5*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  store %struct.mc5* %0, %struct.mc5** %3, align 8
  %6 = load %struct.mc5*, %struct.mc5** %3, align 8
  %7 = getelementptr inbounds %struct.mc5, %struct.mc5* %6, i32 0, i32 0
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %5, align 8
  %10 = load i32, i32* @A_MC5_DB_RSP_LATENCY, align 4
  %11 = call i32 @V_RDLAT(i32 21)
  %12 = call i32 @V_LRNLAT(i32 21)
  %13 = or i32 %11, %12
  %14 = call i32 @V_SRCHLAT(i32 21)
  %15 = or i32 %13, %14
  %16 = call i32 @t3_write_reg(%struct.adapter* %9, i32 %10, i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = load i32, i32* @A_MC5_DB_PART_ID_INDEX, align 4
  %19 = call i32 @t3_write_reg(%struct.adapter* %17, i32 %18, i32 2)
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = load i32, i32* @A_MC5_DB_POPEN_DATA_WR_CMD, align 4
  %22 = load i32, i32* @IDT_CMD_WRITE, align 4
  %23 = call i32 @t3_write_reg(%struct.adapter* %20, i32 %21, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = load i32, i32* @A_MC5_DB_POPEN_MASK_WR_CMD, align 4
  %26 = load i32, i32* @IDT_CMD_WRITE, align 4
  %27 = call i32 @t3_write_reg(%struct.adapter* %24, i32 %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = load i32, i32* @A_MC5_DB_AOPEN_SRCH_CMD, align 4
  %30 = load i32, i32* @IDT_CMD_SEARCH, align 4
  %31 = call i32 @t3_write_reg(%struct.adapter* %28, i32 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load i32, i32* @A_MC5_DB_AOPEN_LRN_CMD, align 4
  %34 = load i32, i32* @IDT_CMD_LEARN, align 4
  %35 = call i32 @t3_write_reg(%struct.adapter* %32, i32 %33, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = load i32, i32* @A_MC5_DB_SYN_SRCH_CMD, align 4
  %38 = load i32, i32* @IDT_CMD_SEARCH, align 4
  %39 = or i32 %38, 24576
  %40 = call i32 @t3_write_reg(%struct.adapter* %36, i32 %37, i32 %39)
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = load i32, i32* @A_MC5_DB_SYN_LRN_CMD, align 4
  %43 = load i32, i32* @IDT_CMD_LEARN, align 4
  %44 = call i32 @t3_write_reg(%struct.adapter* %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = load i32, i32* @A_MC5_DB_ACK_SRCH_CMD, align 4
  %47 = load i32, i32* @IDT_CMD_SEARCH, align 4
  %48 = call i32 @t3_write_reg(%struct.adapter* %45, i32 %46, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load i32, i32* @A_MC5_DB_ACK_LRN_CMD, align 4
  %51 = load i32, i32* @IDT_CMD_LEARN, align 4
  %52 = call i32 @t3_write_reg(%struct.adapter* %49, i32 %50, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %5, align 8
  %54 = load i32, i32* @A_MC5_DB_ILOOKUP_CMD, align 4
  %55 = load i32, i32* @IDT_CMD_SEARCH, align 4
  %56 = call i32 @t3_write_reg(%struct.adapter* %53, i32 %54, i32 %55)
  %57 = load %struct.adapter*, %struct.adapter** %5, align 8
  %58 = load i32, i32* @A_MC5_DB_ELOOKUP_CMD, align 4
  %59 = load i32, i32* @IDT_CMD_SEARCH, align 4
  %60 = or i32 %59, 28672
  %61 = call i32 @t3_write_reg(%struct.adapter* %57, i32 %58, i32 %60)
  %62 = load %struct.adapter*, %struct.adapter** %5, align 8
  %63 = load i32, i32* @A_MC5_DB_DATA_WRITE_CMD, align 4
  %64 = load i32, i32* @IDT_CMD_WRITE, align 4
  %65 = call i32 @t3_write_reg(%struct.adapter* %62, i32 %63, i32 %64)
  %66 = load %struct.adapter*, %struct.adapter** %5, align 8
  %67 = load i32, i32* @A_MC5_DB_DATA_READ_CMD, align 4
  %68 = load i32, i32* @IDT_CMD_READ, align 4
  %69 = call i32 @t3_write_reg(%struct.adapter* %66, i32 %67, i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %5, align 8
  %71 = load i32, i32* @A_MC5_DB_DBGI_CONFIG, align 4
  %72 = load i32, i32* @DBGI_MODE_IDT52100, align 4
  %73 = call i32 @t3_write_reg(%struct.adapter* %70, i32 %71, i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %5, align 8
  %75 = load i32, i32* @IDT_LAR_MODE144, align 4
  %76 = call i32 @dbgi_wr_data3(%struct.adapter* %74, i32 %75, i32 0, i32 0)
  %77 = load %struct.adapter*, %struct.adapter** %5, align 8
  %78 = load i64, i64* @IDT_LAR_ADR0, align 8
  %79 = load i32, i32* @IDT_CMD_WRITE, align 4
  %80 = call i64 @mc5_write(%struct.adapter* %77, i64 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %1
  br label %150

83:                                               ; preds = %1
  %84 = load %struct.adapter*, %struct.adapter** %5, align 8
  %85 = call i32 @dbgi_wr_data3(%struct.adapter* %84, i32 -1, i32 -1, i32 0)
  %86 = load %struct.adapter*, %struct.adapter** %5, align 8
  %87 = load i64, i64* @IDT_SSR0_ADR0, align 8
  %88 = load i32, i32* @IDT_CMD_WRITE, align 4
  %89 = call i64 @mc5_write(%struct.adapter* %86, i64 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %83
  %92 = load %struct.adapter*, %struct.adapter** %5, align 8
  %93 = load i64, i64* @IDT_SSR1_ADR0, align 8
  %94 = load i32, i32* @IDT_CMD_WRITE, align 4
  %95 = call i64 @mc5_write(%struct.adapter* %92, i64 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %83
  br label %150

98:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %132, %98
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 32
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = icmp sge i32 %103, 12
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 15
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.adapter*, %struct.adapter** %5, align 8
  %110 = call i32 @dbgi_wr_data3(%struct.adapter* %109, i32 -7, i32 -1, i32 255)
  br label %121

111:                                              ; preds = %105, %102
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 15
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.adapter*, %struct.adapter** %5, align 8
  %116 = call i32 @dbgi_wr_data3(%struct.adapter* %115, i32 -7, i32 -32761, i32 255)
  br label %120

117:                                              ; preds = %111
  %118 = load %struct.adapter*, %struct.adapter** %5, align 8
  %119 = call i32 @dbgi_wr_data3(%struct.adapter* %118, i32 -1, i32 -1, i32 255)
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %108
  %122 = load %struct.adapter*, %struct.adapter** %5, align 8
  %123 = load i64, i64* @IDT_GMR_BASE_ADR0, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load i32, i32* @IDT_CMD_WRITE, align 4
  %128 = call i64 @mc5_write(%struct.adapter* %122, i64 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %150

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %99

135:                                              ; preds = %99
  %136 = load %struct.adapter*, %struct.adapter** %5, align 8
  %137 = call i32 @dbgi_wr_data3(%struct.adapter* %136, i32 1, i32 0, i32 0)
  %138 = load %struct.adapter*, %struct.adapter** %5, align 8
  %139 = load i64, i64* @IDT_SCR_ADR0, align 8
  %140 = load i32, i32* @IDT_CMD_WRITE, align 4
  %141 = call i64 @mc5_write(%struct.adapter* %138, i64 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %150

144:                                              ; preds = %135
  %145 = load %struct.mc5*, %struct.mc5** %3, align 8
  %146 = load i32, i32* @IDT_MSKARY_BASE_ADR0, align 4
  %147 = load i32, i32* @IDT_DATARY_BASE_ADR0, align 4
  %148 = load i32, i32* @IDT_CMD_WRITE, align 4
  %149 = call i32 @init_mask_data_array(%struct.mc5* %145, i32 %146, i32 %147, i32 %148, i32 0)
  store i32 %149, i32* %2, align 4
  br label %153

150:                                              ; preds = %143, %130, %97, %82
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %150, %144
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RDLAT(i32) #1

declare dso_local i32 @V_LRNLAT(i32) #1

declare dso_local i32 @V_SRCHLAT(i32) #1

declare dso_local i32 @dbgi_wr_data3(%struct.adapter*, i32, i32, i32) #1

declare dso_local i64 @mc5_write(%struct.adapter*, i64, i32) #1

declare dso_local i32 @init_mask_data_array(%struct.mc5*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
