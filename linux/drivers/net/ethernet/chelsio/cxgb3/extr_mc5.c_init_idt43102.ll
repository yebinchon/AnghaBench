; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_init_idt43102.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_init_idt43102.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@A_MC5_DB_RSP_LATENCY = common dso_local global i32 0, align 4
@A_MC5_DB_POPEN_DATA_WR_CMD = common dso_local global i32 0, align 4
@IDT4_CMD_WRITE = common dso_local global i32 0, align 4
@A_MC5_DB_POPEN_MASK_WR_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_AOPEN_SRCH_CMD = common dso_local global i32 0, align 4
@IDT4_CMD_SEARCH144 = common dso_local global i32 0, align 4
@A_MC5_DB_SYN_SRCH_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ACK_SRCH_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ILOOKUP_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_ELOOKUP_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_DATA_WRITE_CMD = common dso_local global i32 0, align 4
@A_MC5_DB_DATA_READ_CMD = common dso_local global i32 0, align 4
@IDT4_CMD_READ = common dso_local global i32 0, align 4
@A_MC5_DB_PART_ID_INDEX = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_CONFIG = common dso_local global i32 0, align 4
@DBGI_MODE_IDT52100 = common dso_local global i32 0, align 4
@IDT4_GMR_BASE0 = common dso_local global i64 0, align 8
@IDT4_GMR_BASE2 = common dso_local global i64 0, align 8
@IDT4_GMR_BASE1 = common dso_local global i64 0, align 8
@IDT4_SCR_ADR0 = common dso_local global i64 0, align 8
@IDT4_MSKARY_BASE_ADR0 = common dso_local global i32 0, align 4
@IDT4_DATARY_BASE_ADR0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc5*)* @init_idt43102 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_idt43102(%struct.mc5* %0) #0 {
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
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @V_RDLAT(i32 13)
  %18 = call i32 @V_SRCHLAT(i32 17)
  %19 = or i32 %17, %18
  br label %24

20:                                               ; preds = %1
  %21 = call i32 @V_RDLAT(i32 13)
  %22 = call i32 @V_SRCHLAT(i32 18)
  %23 = or i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %19, %16 ], [ %23, %20 ]
  %26 = call i32 @t3_write_reg(%struct.adapter* %9, i32 %10, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = load i32, i32* @A_MC5_DB_POPEN_DATA_WR_CMD, align 4
  %29 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %30 = call i32 @t3_write_reg(%struct.adapter* %27, i32 %28, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = load i32, i32* @A_MC5_DB_POPEN_MASK_WR_CMD, align 4
  %33 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %34 = call i32 @t3_write_reg(%struct.adapter* %31, i32 %32, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = load i32, i32* @A_MC5_DB_AOPEN_SRCH_CMD, align 4
  %37 = load i32, i32* @IDT4_CMD_SEARCH144, align 4
  %38 = or i32 %37, 14336
  %39 = call i32 @t3_write_reg(%struct.adapter* %35, i32 %36, i32 %38)
  %40 = load %struct.adapter*, %struct.adapter** %5, align 8
  %41 = load i32, i32* @A_MC5_DB_SYN_SRCH_CMD, align 4
  %42 = load i32, i32* @IDT4_CMD_SEARCH144, align 4
  %43 = call i32 @t3_write_reg(%struct.adapter* %40, i32 %41, i32 %42)
  %44 = load %struct.adapter*, %struct.adapter** %5, align 8
  %45 = load i32, i32* @A_MC5_DB_ACK_SRCH_CMD, align 4
  %46 = load i32, i32* @IDT4_CMD_SEARCH144, align 4
  %47 = or i32 %46, 14336
  %48 = call i32 @t3_write_reg(%struct.adapter* %44, i32 %45, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load i32, i32* @A_MC5_DB_ILOOKUP_CMD, align 4
  %51 = load i32, i32* @IDT4_CMD_SEARCH144, align 4
  %52 = or i32 %51, 14336
  %53 = call i32 @t3_write_reg(%struct.adapter* %49, i32 %50, i32 %52)
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = load i32, i32* @A_MC5_DB_ELOOKUP_CMD, align 4
  %56 = load i32, i32* @IDT4_CMD_SEARCH144, align 4
  %57 = or i32 %56, 2048
  %58 = call i32 @t3_write_reg(%struct.adapter* %54, i32 %55, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %5, align 8
  %60 = load i32, i32* @A_MC5_DB_DATA_WRITE_CMD, align 4
  %61 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %62 = call i32 @t3_write_reg(%struct.adapter* %59, i32 %60, i32 %61)
  %63 = load %struct.adapter*, %struct.adapter** %5, align 8
  %64 = load i32, i32* @A_MC5_DB_DATA_READ_CMD, align 4
  %65 = load i32, i32* @IDT4_CMD_READ, align 4
  %66 = call i32 @t3_write_reg(%struct.adapter* %63, i32 %64, i32 %65)
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = load i32, i32* @A_MC5_DB_PART_ID_INDEX, align 4
  %69 = call i32 @t3_write_reg(%struct.adapter* %67, i32 %68, i32 3)
  %70 = load %struct.adapter*, %struct.adapter** %5, align 8
  %71 = load i32, i32* @A_MC5_DB_DBGI_CONFIG, align 4
  %72 = load i32, i32* @DBGI_MODE_IDT52100, align 4
  %73 = call i32 @t3_write_reg(%struct.adapter* %70, i32 %71, i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %5, align 8
  %75 = call i32 @dbgi_wr_data3(%struct.adapter* %74, i32 -1, i32 -1, i32 255)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %90, %24
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 7
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = load i64, i64* @IDT4_GMR_BASE0, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %86 = call i64 @mc5_write(%struct.adapter* %80, i64 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %159

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %76

93:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.adapter*, %struct.adapter** %5, align 8
  %99 = load i64, i64* @IDT4_GMR_BASE2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %104 = call i64 @mc5_write(%struct.adapter* %98, i64 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %159

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %94

111:                                              ; preds = %94
  %112 = load %struct.adapter*, %struct.adapter** %5, align 8
  %113 = call i32 @dbgi_wr_data3(%struct.adapter* %112, i32 -7, i32 -1, i32 255)
  %114 = load %struct.adapter*, %struct.adapter** %5, align 8
  %115 = load i64, i64* @IDT4_GMR_BASE1, align 8
  %116 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %117 = call i64 @mc5_write(%struct.adapter* %114, i64 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %111
  %120 = load %struct.adapter*, %struct.adapter** %5, align 8
  %121 = load i64, i64* @IDT4_GMR_BASE1, align 8
  %122 = add nsw i64 %121, 1
  %123 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %124 = call i64 @mc5_write(%struct.adapter* %120, i64 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %119
  %127 = load %struct.adapter*, %struct.adapter** %5, align 8
  %128 = load i64, i64* @IDT4_GMR_BASE1, align 8
  %129 = add nsw i64 %128, 4
  %130 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %131 = call i64 @mc5_write(%struct.adapter* %127, i64 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126, %119, %111
  br label %159

134:                                              ; preds = %126
  %135 = load %struct.adapter*, %struct.adapter** %5, align 8
  %136 = call i32 @dbgi_wr_data3(%struct.adapter* %135, i32 -7, i32 -32761, i32 255)
  %137 = load %struct.adapter*, %struct.adapter** %5, align 8
  %138 = load i64, i64* @IDT4_GMR_BASE1, align 8
  %139 = add nsw i64 %138, 5
  %140 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %141 = call i64 @mc5_write(%struct.adapter* %137, i64 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %159

144:                                              ; preds = %134
  %145 = load %struct.adapter*, %struct.adapter** %5, align 8
  %146 = call i32 @dbgi_wr_data3(%struct.adapter* %145, i32 -268435456, i32 0, i32 0)
  %147 = load %struct.adapter*, %struct.adapter** %5, align 8
  %148 = load i64, i64* @IDT4_SCR_ADR0, align 8
  %149 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %150 = call i64 @mc5_write(%struct.adapter* %147, i64 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %159

153:                                              ; preds = %144
  %154 = load %struct.mc5*, %struct.mc5** %3, align 8
  %155 = load i32, i32* @IDT4_MSKARY_BASE_ADR0, align 4
  %156 = load i32, i32* @IDT4_DATARY_BASE_ADR0, align 4
  %157 = load i32, i32* @IDT4_CMD_WRITE, align 4
  %158 = call i32 @init_mask_data_array(%struct.mc5* %154, i32 %155, i32 %156, i32 %157, i32 1)
  store i32 %158, i32* %2, align 4
  br label %162

159:                                              ; preds = %152, %143, %133, %106, %88
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %159, %153
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RDLAT(i32) #1

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
