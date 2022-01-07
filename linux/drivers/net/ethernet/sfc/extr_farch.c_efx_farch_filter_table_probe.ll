; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_table_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_table_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_farch_filter_state* }
%struct.efx_farch_filter_state = type { %struct.efx_farch_filter_table*, i32 }
%struct.efx_farch_filter_table = type { i64, i32, i32, %struct.efx_farch_filter_spec*, i32, i32 }
%struct.efx_farch_filter_spec = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_RX_IP = common dso_local global i64 0, align 8
@FR_BZ_RX_FILTER_TBL0 = common dso_local global i32 0, align 4
@FR_BZ_RX_FILTER_TBL0_ROWS = common dso_local global i32 0, align 4
@FR_BZ_RX_FILTER_TBL0_STEP = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_RX_MAC = common dso_local global i64 0, align 8
@FR_CZ_RX_MAC_FILTER_TBL0 = common dso_local global i32 0, align 4
@FR_CZ_RX_MAC_FILTER_TBL0_ROWS = common dso_local global i32 0, align 4
@FR_CZ_RX_MAC_FILTER_TBL0_STEP = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_RX_DEF = common dso_local global i64 0, align 8
@EFX_FARCH_FILTER_SIZE_RX_DEF = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_TX_MAC = common dso_local global i64 0, align 8
@FR_CZ_TX_MAC_FILTER_TBL0 = common dso_local global i32 0, align 4
@FR_CZ_TX_MAC_FILTER_TBL0_ROWS = common dso_local global i32 0, align 4
@FR_CZ_TX_MAC_FILTER_TBL0_STEP = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_UC_DEF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_farch_filter_table_probe(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_farch_filter_state*, align 8
  %5 = alloca %struct.efx_farch_filter_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_farch_filter_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.efx_farch_filter_state* @kzalloc(i32 16, i32 %9)
  store %struct.efx_farch_filter_state* %10, %struct.efx_farch_filter_state** %4, align 8
  %11 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %12 = icmp ne %struct.efx_farch_filter_state* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %182

16:                                               ; preds = %1
  %17 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  store %struct.efx_farch_filter_state* %17, %struct.efx_farch_filter_state** %19, align 8
  %20 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %21 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %20, i32 0, i32 1
  %22 = call i32 @init_rwsem(i32* %21)
  %23 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %24 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %23, i32 0, i32 0
  %25 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %24, align 8
  %26 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_IP, align 8
  %27 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %25, i64 %26
  store %struct.efx_farch_filter_table* %27, %struct.efx_farch_filter_table** %5, align 8
  %28 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_IP, align 8
  %29 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %30 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @FR_BZ_RX_FILTER_TBL0, align 4
  %32 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %33 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @FR_BZ_RX_FILTER_TBL0_ROWS, align 4
  %35 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %36 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @FR_BZ_RX_FILTER_TBL0_STEP, align 4
  %38 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %39 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %41 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %40, i32 0, i32 0
  %42 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %41, align 8
  %43 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_MAC, align 8
  %44 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %42, i64 %43
  store %struct.efx_farch_filter_table* %44, %struct.efx_farch_filter_table** %5, align 8
  %45 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_MAC, align 8
  %46 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %47 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @FR_CZ_RX_MAC_FILTER_TBL0, align 4
  %49 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %50 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @FR_CZ_RX_MAC_FILTER_TBL0_ROWS, align 4
  %52 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %53 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @FR_CZ_RX_MAC_FILTER_TBL0_STEP, align 4
  %55 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %56 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %58 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %57, i32 0, i32 0
  %59 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %58, align 8
  %60 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_DEF, align 8
  %61 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %59, i64 %60
  store %struct.efx_farch_filter_table* %61, %struct.efx_farch_filter_table** %5, align 8
  %62 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_DEF, align 8
  %63 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %64 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @EFX_FARCH_FILTER_SIZE_RX_DEF, align 4
  %66 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %67 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %69 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %68, i32 0, i32 0
  %70 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %69, align 8
  %71 = load i64, i64* @EFX_FARCH_FILTER_TABLE_TX_MAC, align 8
  %72 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %70, i64 %71
  store %struct.efx_farch_filter_table* %72, %struct.efx_farch_filter_table** %5, align 8
  %73 = load i64, i64* @EFX_FARCH_FILTER_TABLE_TX_MAC, align 8
  %74 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %75 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @FR_CZ_TX_MAC_FILTER_TBL0, align 4
  %77 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %78 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @FR_CZ_TX_MAC_FILTER_TBL0_ROWS, align 4
  %80 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %81 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @FR_CZ_TX_MAC_FILTER_TBL0_STEP, align 4
  %83 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %84 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %131, %16
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @EFX_FARCH_FILTER_TABLE_COUNT, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %85
  %90 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %91 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %90, i32 0, i32 0
  %92 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %92, i64 %94
  store %struct.efx_farch_filter_table* %95, %struct.efx_farch_filter_table** %5, align 8
  %96 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %97 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %131

101:                                              ; preds = %89
  %102 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %103 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = zext i32 %104 to i64
  %106 = call i32 @BITS_TO_LONGS(i64 %105)
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i32 @kcalloc(i32 %106, i32 8, i32 %107)
  %109 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %110 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %112 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %101
  br label %177

116:                                              ; preds = %101
  %117 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %118 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = zext i32 %119 to i64
  %121 = call i32 @array_size(i32 8, i64 %120)
  %122 = call %struct.efx_farch_filter_spec* @vzalloc(i32 %121)
  %123 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %124 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %123, i32 0, i32 3
  store %struct.efx_farch_filter_spec* %122, %struct.efx_farch_filter_spec** %124, align 8
  %125 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %126 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %125, i32 0, i32 3
  %127 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %126, align 8
  %128 = icmp ne %struct.efx_farch_filter_spec* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %116
  br label %177

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i32, i32* %6, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %85

134:                                              ; preds = %85
  %135 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %4, align 8
  %136 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %135, i32 0, i32 0
  %137 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %136, align 8
  %138 = load i64, i64* @EFX_FARCH_FILTER_TABLE_RX_DEF, align 8
  %139 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %137, i64 %138
  store %struct.efx_farch_filter_table* %139, %struct.efx_farch_filter_table** %5, align 8
  %140 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %141 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %170, %144
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @EFX_FARCH_FILTER_SIZE_RX_DEF, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %145
  %150 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %151 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %150, i32 0, i32 3
  %152 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %152, i64 %154
  store %struct.efx_farch_filter_spec* %155, %struct.efx_farch_filter_spec** %7, align 8
  %156 = load i64, i64* @EFX_FARCH_FILTER_UC_DEF, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %7, align 8
  %161 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %163 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %7, align 8
  %164 = call i32 @efx_farch_filter_init_rx_auto(%struct.efx_nic* %162, %struct.efx_farch_filter_spec* %163)
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %167 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @__set_bit(i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %149
  %171 = load i32, i32* %8, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %145

173:                                              ; preds = %145
  br label %174

174:                                              ; preds = %173, %134
  %175 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %176 = call i32 @efx_farch_filter_push_rx_config(%struct.efx_nic* %175)
  store i32 0, i32* %2, align 4
  br label %182

177:                                              ; preds = %129, %115
  %178 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %179 = call i32 @efx_farch_filter_table_remove(%struct.efx_nic* %178)
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %177, %174, %13
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.efx_farch_filter_state* @kzalloc(i32, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local %struct.efx_farch_filter_spec* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i64) #1

declare dso_local i32 @efx_farch_filter_init_rx_auto(%struct.efx_nic*, %struct.efx_farch_filter_spec*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @efx_farch_filter_push_rx_config(%struct.efx_nic*) #1

declare dso_local i32 @efx_farch_filter_table_remove(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
