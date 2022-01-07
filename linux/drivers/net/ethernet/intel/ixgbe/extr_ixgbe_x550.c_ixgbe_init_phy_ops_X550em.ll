; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_init_phy_ops_X550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_init_phy_ops_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_5__, %struct.ixgbe_phy_info }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_phy_info = type { i64, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.2*)*, i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.ixgbe_hw.2 = type opaque

@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@IXGBE_GSSR_SHARED_I2C_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@ixgbe_read_phy_reg_x550em = common dso_local global i8* null, align 8
@ixgbe_write_phy_reg_x550em = common dso_local global i8* null, align 8
@ixgbe_setup_kr_x550em = common dso_local global i32* null, align 8
@IXGBE_NW_MNG_IF_SEL = common dso_local global i32 0, align 4
@ixgbe_setup_internal_phy_t_x550em = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_x = common dso_local global i32 0, align 4
@IXGBE_FUSES0_REV_MASK = common dso_local global i32 0, align 4
@ixgbe_enter_lplu_t_x550em = common dso_local global i32 0, align 4
@ixgbe_handle_lasi_ext_t_x550em = common dso_local global i32 0, align 4
@ixgbe_reset_phy_t_X550em = common dso_local global i32* null, align 8
@ixgbe_setup_fw_link = common dso_local global i32* null, align 8
@ixgbe_reset_phy_fw = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_init_phy_ops_X550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_init_phy_ops_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_phy_info* %7, %struct.ixgbe_phy_info** %4, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %11, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = bitcast %struct.ixgbe_hw* %13 to %struct.ixgbe_hw.1*
  %15 = call i32 %12(%struct.ixgbe_hw.1* %14)
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = call i32 @ixgbe_read_mng_if_sel_x550em(%struct.ixgbe_hw* %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.0*
  %25 = call i64 %22(%struct.ixgbe_hw.0* %24)
  %26 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @IXGBE_GSSR_SHARED_I2C_SM, align 4
  %30 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = call i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw* %32)
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64 (%struct.ixgbe_hw.2*)*, i64 (%struct.ixgbe_hw.2*)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.2*
  %41 = call i64 %38(%struct.ixgbe_hw.2* %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %34
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %177

51:                                               ; preds = %45
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = call i32 @ixgbe_init_mac_link_ops_X550em(%struct.ixgbe_hw* %52)
  %54 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %61 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %174 [
    i32 129, label %68
    i32 130, label %82
    i32 128, label %97
    i32 131, label %111
    i32 132, label %148
    i32 133, label %152
    i32 134, label %161
  ]

68:                                               ; preds = %63
  %69 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load i8*, i8** @ixgbe_read_phy_reg_x550em, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32* %73, i32** %76, align 8
  %77 = load i8*, i8** @ixgbe_write_phy_reg_x550em, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i32* %78, i32** %81, align 8
  br label %175

82:                                               ; preds = %63
  %83 = load i32*, i32** @ixgbe_setup_kr_x550em, align 8
  %84 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %85 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32* %83, i32** %86, align 8
  %87 = load i8*, i8** @ixgbe_read_phy_reg_x550em, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %90 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32* %88, i32** %91, align 8
  %92 = load i8*, i8** @ixgbe_write_phy_reg_x550em, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %95 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32* %93, i32** %96, align 8
  br label %175

97:                                               ; preds = %63
  %98 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %99 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load i8*, i8** @ixgbe_read_phy_reg_x550em, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32* %102, i32** %105, align 8
  %106 = load i8*, i8** @ixgbe_write_phy_reg_x550em, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32* %107, i32** %110, align 8
  br label %175

111:                                              ; preds = %63
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = load i32, i32* @IXGBE_NW_MNG_IF_SEL, align 4
  %114 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %112, i32 %113)
  %115 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @ixgbe_setup_internal_phy_t_x550em, align 4
  %118 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %119 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  store i32 %117, i32* %120, align 8
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ixgbe_mac_X550EM_x, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %111
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %129 = call i32 @IXGBE_FUSES0_GROUP(i32 0)
  %130 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %128, i32 %129)
  %131 = load i32, i32* @IXGBE_FUSES0_REV_MASK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @ixgbe_enter_lplu_t_x550em, align 4
  %136 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %137 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  store i32 %135, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %127, %111
  %140 = load i32, i32* @ixgbe_handle_lasi_ext_t_x550em, align 4
  %141 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %142 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  store i32 %140, i32* %143, align 8
  %144 = load i32*, i32** @ixgbe_reset_phy_t_X550em, align 8
  %145 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %146 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32* %144, i32** %147, align 8
  br label %175

148:                                              ; preds = %63
  %149 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %150 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  store i32* null, i32** %151, align 8
  br label %175

152:                                              ; preds = %63
  %153 = load i32*, i32** @ixgbe_setup_fw_link, align 8
  %154 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %155 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  store i32* %153, i32** %156, align 8
  %157 = load i32*, i32** @ixgbe_reset_phy_fw, align 8
  %158 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %159 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  store i32* %157, i32** %160, align 8
  br label %175

161:                                              ; preds = %63
  %162 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %163 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  store i32* null, i32** %164, align 8
  %165 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %166 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  store i32* null, i32** %167, align 8
  %168 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %169 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32* null, i32** %170, align 8
  %171 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %172 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store i32* null, i32** %173, align 8
  br label %175

174:                                              ; preds = %63
  br label %175

175:                                              ; preds = %174, %161, %152, %148, %139, %97, %82, %68
  %176 = load i64, i64* %5, align 8
  store i64 %176, i64* %2, align 8
  br label %177

177:                                              ; preds = %175, %49
  %178 = load i64, i64* %2, align 8
  ret i64 %178
}

declare dso_local i32 @ixgbe_read_mng_if_sel_x550em(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_mac_link_ops_X550em(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FUSES0_GROUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
