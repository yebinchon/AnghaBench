; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_clear_hw_cntrs_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_clear_hw_cntrs_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_CRCERRS = common dso_local global i32 0, align 4
@IXGBE_ILLERRC = common dso_local global i32 0, align 4
@IXGBE_ERRBC = common dso_local global i32 0, align 4
@IXGBE_MSPDC = common dso_local global i32 0, align 4
@IXGBE_MLFC = common dso_local global i32 0, align 4
@IXGBE_MRFC = common dso_local global i32 0, align 4
@IXGBE_RLEC = common dso_local global i32 0, align 4
@IXGBE_LXONTXC = common dso_local global i32 0, align 4
@IXGBE_LXOFFTXC = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_LXONRXCNT = common dso_local global i32 0, align 4
@IXGBE_LXOFFRXCNT = common dso_local global i32 0, align 4
@IXGBE_LXONRXC = common dso_local global i32 0, align 4
@IXGBE_LXOFFRXC = common dso_local global i32 0, align 4
@IXGBE_PRC64 = common dso_local global i32 0, align 4
@IXGBE_PRC127 = common dso_local global i32 0, align 4
@IXGBE_PRC255 = common dso_local global i32 0, align 4
@IXGBE_PRC511 = common dso_local global i32 0, align 4
@IXGBE_PRC1023 = common dso_local global i32 0, align 4
@IXGBE_PRC1522 = common dso_local global i32 0, align 4
@IXGBE_GPRC = common dso_local global i32 0, align 4
@IXGBE_BPRC = common dso_local global i32 0, align 4
@IXGBE_MPRC = common dso_local global i32 0, align 4
@IXGBE_GPTC = common dso_local global i32 0, align 4
@IXGBE_GORCL = common dso_local global i32 0, align 4
@IXGBE_GORCH = common dso_local global i32 0, align 4
@IXGBE_GOTCL = common dso_local global i32 0, align 4
@IXGBE_GOTCH = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RUC = common dso_local global i32 0, align 4
@IXGBE_RFC = common dso_local global i32 0, align 4
@IXGBE_ROC = common dso_local global i32 0, align 4
@IXGBE_RJC = common dso_local global i32 0, align 4
@IXGBE_MNGPRC = common dso_local global i32 0, align 4
@IXGBE_MNGPDC = common dso_local global i32 0, align 4
@IXGBE_MNGPTC = common dso_local global i32 0, align 4
@IXGBE_TORL = common dso_local global i32 0, align 4
@IXGBE_TORH = common dso_local global i32 0, align 4
@IXGBE_TPR = common dso_local global i32 0, align 4
@IXGBE_TPT = common dso_local global i32 0, align 4
@IXGBE_PTC64 = common dso_local global i32 0, align 4
@IXGBE_PTC127 = common dso_local global i32 0, align 4
@IXGBE_PTC255 = common dso_local global i32 0, align 4
@IXGBE_PTC511 = common dso_local global i32 0, align 4
@IXGBE_PTC1023 = common dso_local global i32 0, align 4
@IXGBE_PTC1522 = common dso_local global i32 0, align 4
@IXGBE_MPTC = common dso_local global i32 0, align 4
@IXGBE_BPTC = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_PCRC8ECL = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@IXGBE_PCRC8ECH = common dso_local global i32 0, align 4
@IXGBE_LDPCECL = common dso_local global i32 0, align 4
@IXGBE_LDPCECH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clear_hw_cntrs_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = load i32, i32* @IXGBE_CRCERRS, align 4
  %6 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %4, i32 %5)
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = load i32, i32* @IXGBE_ILLERRC, align 4
  %9 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %8)
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = load i32, i32* @IXGBE_ERRBC, align 4
  %12 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %10, i32 %11)
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load i32, i32* @IXGBE_MSPDC, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %24, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @IXGBE_MPC(i32 %21)
  %23 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load i32, i32* @IXGBE_MLFC, align 4
  %30 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %28, i32 %29)
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = load i32, i32* @IXGBE_MRFC, align 4
  %33 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %31, i32 %32)
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = load i32, i32* @IXGBE_RLEC, align 4
  %36 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = load i32, i32* @IXGBE_LXONTXC, align 4
  %39 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %38)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = load i32, i32* @IXGBE_LXOFFTXC, align 4
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %41)
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %27
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = load i32, i32* @IXGBE_LXONRXCNT, align 4
  %52 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %50, i32 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = load i32, i32* @IXGBE_LXOFFRXCNT, align 4
  %55 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %53, i32 %54)
  br label %63

56:                                               ; preds = %27
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = load i32, i32* @IXGBE_LXONRXC, align 4
  %59 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %57, i32 %58)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = load i32, i32* @IXGBE_LXOFFRXC, align 4
  %62 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %101, %63
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %104

67:                                               ; preds = %64
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @IXGBE_PXONTXC(i32 %69)
  %71 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %68, i32 %70)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @IXGBE_PXOFFTXC(i32 %73)
  %75 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %72, i32 %74)
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %67
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @IXGBE_PXONRXCNT(i32 %84)
  %86 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %83, i32 %85)
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @IXGBE_PXOFFRXCNT(i32 %88)
  %90 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %87, i32 %89)
  br label %100

91:                                               ; preds = %67
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @IXGBE_PXONRXC(i32 %93)
  %95 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %92, i32 %94)
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @IXGBE_PXOFFRXC(i32 %97)
  %99 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %96, i32 %98)
  br label %100

100:                                              ; preds = %91, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %64

104:                                              ; preds = %64
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %120, %111
  %113 = load i32, i32* %3, align 4
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @IXGBE_PXON2OFFCNT(i32 %117)
  %119 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %116, i32 %118)
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %112

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %126 = load i32, i32* @IXGBE_PRC64, align 4
  %127 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %125, i32 %126)
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %129 = load i32, i32* @IXGBE_PRC127, align 4
  %130 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %128, i32 %129)
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %132 = load i32, i32* @IXGBE_PRC255, align 4
  %133 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %131, i32 %132)
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %135 = load i32, i32* @IXGBE_PRC511, align 4
  %136 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %134, i32 %135)
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %138 = load i32, i32* @IXGBE_PRC1023, align 4
  %139 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %137, i32 %138)
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %141 = load i32, i32* @IXGBE_PRC1522, align 4
  %142 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %140, i32 %141)
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %144 = load i32, i32* @IXGBE_GPRC, align 4
  %145 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %143, i32 %144)
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %147 = load i32, i32* @IXGBE_BPRC, align 4
  %148 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %146, i32 %147)
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %150 = load i32, i32* @IXGBE_MPRC, align 4
  %151 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %149, i32 %150)
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %153 = load i32, i32* @IXGBE_GPTC, align 4
  %154 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %152, i32 %153)
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %156 = load i32, i32* @IXGBE_GORCL, align 4
  %157 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %155, i32 %156)
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %159 = load i32, i32* @IXGBE_GORCH, align 4
  %160 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %158, i32 %159)
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %162 = load i32, i32* @IXGBE_GOTCL, align 4
  %163 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %161, i32 %162)
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %165 = load i32, i32* @IXGBE_GOTCH, align 4
  %166 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %164, i32 %165)
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %182, %173
  %175 = load i32, i32* %3, align 4
  %176 = icmp slt i32 %175, 8
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @IXGBE_RNBC(i32 %179)
  %181 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %178, i32 %180)
  br label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %3, align 4
  br label %174

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185, %124
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %188 = load i32, i32* @IXGBE_RUC, align 4
  %189 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %187, i32 %188)
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %191 = load i32, i32* @IXGBE_RFC, align 4
  %192 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %190, i32 %191)
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %194 = load i32, i32* @IXGBE_ROC, align 4
  %195 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %193, i32 %194)
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %197 = load i32, i32* @IXGBE_RJC, align 4
  %198 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %196, i32 %197)
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %200 = load i32, i32* @IXGBE_MNGPRC, align 4
  %201 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %199, i32 %200)
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %203 = load i32, i32* @IXGBE_MNGPDC, align 4
  %204 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %202, i32 %203)
  %205 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %206 = load i32, i32* @IXGBE_MNGPTC, align 4
  %207 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %205, i32 %206)
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %209 = load i32, i32* @IXGBE_TORL, align 4
  %210 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %208, i32 %209)
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %212 = load i32, i32* @IXGBE_TORH, align 4
  %213 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %211, i32 %212)
  %214 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %215 = load i32, i32* @IXGBE_TPR, align 4
  %216 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %214, i32 %215)
  %217 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %218 = load i32, i32* @IXGBE_TPT, align 4
  %219 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %217, i32 %218)
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %221 = load i32, i32* @IXGBE_PTC64, align 4
  %222 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %220, i32 %221)
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %224 = load i32, i32* @IXGBE_PTC127, align 4
  %225 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %223, i32 %224)
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %227 = load i32, i32* @IXGBE_PTC255, align 4
  %228 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %226, i32 %227)
  %229 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %230 = load i32, i32* @IXGBE_PTC511, align 4
  %231 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %229, i32 %230)
  %232 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %233 = load i32, i32* @IXGBE_PTC1023, align 4
  %234 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %232, i32 %233)
  %235 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %236 = load i32, i32* @IXGBE_PTC1522, align 4
  %237 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %235, i32 %236)
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %239 = load i32, i32* @IXGBE_MPTC, align 4
  %240 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %238, i32 %239)
  %241 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %242 = load i32, i32* @IXGBE_BPTC, align 4
  %243 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %241, i32 %242)
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %293, %186
  %245 = load i32, i32* %3, align 4
  %246 = icmp slt i32 %245, 16
  br i1 %246, label %247, label %296

247:                                              ; preds = %244
  %248 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %249 = load i32, i32* %3, align 4
  %250 = call i32 @IXGBE_QPRC(i32 %249)
  %251 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %248, i32 %250)
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @IXGBE_QPTC(i32 %253)
  %255 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %252, i32 %254)
  %256 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %257 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %261 = icmp sge i64 %259, %260
  br i1 %261, label %262, label %283

262:                                              ; preds = %247
  %263 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @IXGBE_QBRC_L(i32 %264)
  %266 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %263, i32 %265)
  %267 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %268 = load i32, i32* %3, align 4
  %269 = call i32 @IXGBE_QBRC_H(i32 %268)
  %270 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %267, i32 %269)
  %271 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %272 = load i32, i32* %3, align 4
  %273 = call i32 @IXGBE_QBTC_L(i32 %272)
  %274 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %271, i32 %273)
  %275 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %276 = load i32, i32* %3, align 4
  %277 = call i32 @IXGBE_QBTC_H(i32 %276)
  %278 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %275, i32 %277)
  %279 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %280 = load i32, i32* %3, align 4
  %281 = call i32 @IXGBE_QPRDC(i32 %280)
  %282 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %279, i32 %281)
  br label %292

283:                                              ; preds = %247
  %284 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @IXGBE_QBRC(i32 %285)
  %287 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %284, i32 %286)
  %288 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %289 = load i32, i32* %3, align 4
  %290 = call i32 @IXGBE_QBTC(i32 %289)
  %291 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %288, i32 %290)
  br label %292

292:                                              ; preds = %283, %262
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %3, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %3, align 4
  br label %244

296:                                              ; preds = %244
  %297 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %298 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @ixgbe_mac_X550, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %310, label %303

303:                                              ; preds = %296
  %304 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %305 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @ixgbe_mac_X540, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %366

310:                                              ; preds = %303, %296
  %311 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %312 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %310
  %317 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %318 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %320, align 8
  %322 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %323 = bitcast %struct.ixgbe_hw* %322 to %struct.ixgbe_hw.1*
  %324 = call i32 %321(%struct.ixgbe_hw.1* %323)
  br label %325

325:                                              ; preds = %316, %310
  %326 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %327 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %329, align 8
  %331 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %332 = bitcast %struct.ixgbe_hw* %331 to %struct.ixgbe_hw.0*
  %333 = load i32, i32* @IXGBE_PCRC8ECL, align 4
  %334 = load i32, i32* @MDIO_MMD_PCS, align 4
  %335 = call i32 %330(%struct.ixgbe_hw.0* %332, i32 %333, i32 %334, i32* %3)
  %336 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %337 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %339, align 8
  %341 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %342 = bitcast %struct.ixgbe_hw* %341 to %struct.ixgbe_hw.0*
  %343 = load i32, i32* @IXGBE_PCRC8ECH, align 4
  %344 = load i32, i32* @MDIO_MMD_PCS, align 4
  %345 = call i32 %340(%struct.ixgbe_hw.0* %342, i32 %343, i32 %344, i32* %3)
  %346 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %347 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  %350 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %349, align 8
  %351 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %352 = bitcast %struct.ixgbe_hw* %351 to %struct.ixgbe_hw.0*
  %353 = load i32, i32* @IXGBE_LDPCECL, align 4
  %354 = load i32, i32* @MDIO_MMD_PCS, align 4
  %355 = call i32 %350(%struct.ixgbe_hw.0* %352, i32 %353, i32 %354, i32* %3)
  %356 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %357 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 0
  %360 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %359, align 8
  %361 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %362 = bitcast %struct.ixgbe_hw* %361 to %struct.ixgbe_hw.0*
  %363 = load i32, i32* @IXGBE_LDPCECH, align 4
  %364 = load i32, i32* @MDIO_MMD_PCS, align 4
  %365 = call i32 %360(%struct.ixgbe_hw.0* %362, i32 %363, i32 %364, i32* %3)
  br label %366

366:                                              ; preds = %325, %303
  ret i32 0
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPC(i32) #1

declare dso_local i32 @IXGBE_PXONTXC(i32) #1

declare dso_local i32 @IXGBE_PXOFFTXC(i32) #1

declare dso_local i32 @IXGBE_PXONRXCNT(i32) #1

declare dso_local i32 @IXGBE_PXOFFRXCNT(i32) #1

declare dso_local i32 @IXGBE_PXONRXC(i32) #1

declare dso_local i32 @IXGBE_PXOFFRXC(i32) #1

declare dso_local i32 @IXGBE_PXON2OFFCNT(i32) #1

declare dso_local i32 @IXGBE_RNBC(i32) #1

declare dso_local i32 @IXGBE_QPRC(i32) #1

declare dso_local i32 @IXGBE_QPTC(i32) #1

declare dso_local i32 @IXGBE_QBRC_L(i32) #1

declare dso_local i32 @IXGBE_QBRC_H(i32) #1

declare dso_local i32 @IXGBE_QBTC_L(i32) #1

declare dso_local i32 @IXGBE_QBTC_H(i32) #1

declare dso_local i32 @IXGBE_QPRDC(i32) #1

declare dso_local i32 @IXGBE_QBRC(i32) #1

declare dso_local i32 @IXGBE_QBTC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
