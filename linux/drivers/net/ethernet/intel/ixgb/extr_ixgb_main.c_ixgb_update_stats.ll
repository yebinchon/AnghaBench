; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { %struct.TYPE_3__, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IXGB_MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i64 0, align 8
@MPRCL = common dso_local global i32 0, align 4
@BPRCL = common dso_local global i32 0, align 4
@BPRCH = common dso_local global i32 0, align 4
@MPRCH = common dso_local global i32 0, align 4
@TPRL = common dso_local global i32 0, align 4
@TPRH = common dso_local global i32 0, align 4
@GPRCL = common dso_local global i32 0, align 4
@GPRCH = common dso_local global i32 0, align 4
@UPRCL = common dso_local global i32 0, align 4
@UPRCH = common dso_local global i32 0, align 4
@VPRCL = common dso_local global i32 0, align 4
@VPRCH = common dso_local global i32 0, align 4
@JPRCL = common dso_local global i32 0, align 4
@JPRCH = common dso_local global i32 0, align 4
@GORCL = common dso_local global i32 0, align 4
@GORCH = common dso_local global i32 0, align 4
@TORL = common dso_local global i32 0, align 4
@TORH = common dso_local global i32 0, align 4
@RNBC = common dso_local global i32 0, align 4
@RUC = common dso_local global i32 0, align 4
@ROC = common dso_local global i32 0, align 4
@RLEC = common dso_local global i32 0, align 4
@CRCERRS = common dso_local global i32 0, align 4
@ICBC = common dso_local global i32 0, align 4
@ECBC = common dso_local global i32 0, align 4
@MPC = common dso_local global i32 0, align 4
@TPTL = common dso_local global i32 0, align 4
@TPTH = common dso_local global i32 0, align 4
@GPTCL = common dso_local global i32 0, align 4
@GPTCH = common dso_local global i32 0, align 4
@BPTCL = common dso_local global i32 0, align 4
@BPTCH = common dso_local global i32 0, align 4
@MPTCL = common dso_local global i32 0, align 4
@MPTCH = common dso_local global i32 0, align 4
@UPTCL = common dso_local global i32 0, align 4
@UPTCH = common dso_local global i32 0, align 4
@VPTCL = common dso_local global i32 0, align 4
@VPTCH = common dso_local global i32 0, align 4
@JPTCL = common dso_local global i32 0, align 4
@JPTCH = common dso_local global i32 0, align 4
@GOTCL = common dso_local global i32 0, align 4
@GOTCH = common dso_local global i32 0, align 4
@TOTL = common dso_local global i32 0, align 4
@TOTH = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@PLT64C = common dso_local global i32 0, align 4
@TSCTC = common dso_local global i32 0, align 4
@TSCTFC = common dso_local global i32 0, align 4
@IBIC = common dso_local global i32 0, align 4
@RFC = common dso_local global i32 0, align 4
@LFC = common dso_local global i32 0, align 4
@PFRC = common dso_local global i32 0, align 4
@PFTC = common dso_local global i32 0, align 4
@MCFRC = common dso_local global i32 0, align 4
@MCFTC = common dso_local global i32 0, align 4
@XONRXC = common dso_local global i32 0, align 4
@XONTXC = common dso_local global i32 0, align 4
@XOFFRXC = common dso_local global i32 0, align 4
@XOFFTXC = common dso_local global i32 0, align 4
@RJC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_update_stats(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %9 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @pci_channel_offline(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %756

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IFF_ALLMULTI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i64 @netdev_mc_count(%struct.net_device* %34)
  %36 = load i64, i64* @IXGB_MAX_NUM_MULTICAST_ADDRESSES, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %33, %26, %19
  %39 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* @MPRCL, align 4
  %42 = call i32 @IXGB_READ_REG(i32* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* @BPRCL, align 4
  %46 = call i32 @IXGB_READ_REG(i32* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* @BPRCH, align 4
  %50 = call i32 @IXGB_READ_REG(i32* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 32
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* @MPRCH, align 4
  %58 = call i32 @IXGB_READ_REG(i32* %56, i32 %57)
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %38
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %38
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 32
  %78 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %83
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 59
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %132

95:                                               ; preds = %33
  %96 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %96, i32 0, i32 1
  %98 = load i32, i32* @MPRCL, align 4
  %99 = call i32 @IXGB_READ_REG(i32* %97, i32 %98)
  %100 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %99
  store i32 %104, i32* %102, align 8
  %105 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %105, i32 0, i32 1
  %107 = load i32, i32* @MPRCH, align 4
  %108 = call i32 @IXGB_READ_REG(i32* %106, i32 %107)
  %109 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* @BPRCL, align 4
  %117 = call i32 @IXGB_READ_REG(i32* %115, i32 %116)
  %118 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %123, i32 0, i32 1
  %125 = load i32, i32* @BPRCH, align 4
  %126 = call i32 @IXGB_READ_REG(i32* %124, i32 %125)
  %127 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 59
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %95, %69
  %133 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %133, i32 0, i32 1
  %135 = load i32, i32* @TPRL, align 4
  %136 = call i32 @IXGB_READ_REG(i32* %134, i32 %135)
  %137 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %138 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 58
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %136
  store i32 %141, i32* %139, align 8
  %142 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %142, i32 0, i32 1
  %144 = load i32, i32* @TPRH, align 4
  %145 = call i32 @IXGB_READ_REG(i32* %143, i32 %144)
  %146 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %147 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 57
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %152 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %151, i32 0, i32 1
  %153 = load i32, i32* @GPRCL, align 4
  %154 = call i32 @IXGB_READ_REG(i32* %152, i32 %153)
  %155 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %156 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %154
  store i32 %159, i32* %157, align 8
  %160 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %161 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %160, i32 0, i32 1
  %162 = load i32, i32* @GPRCH, align 4
  %163 = call i32 @IXGB_READ_REG(i32* %161, i32 %162)
  %164 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %165 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 56
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %170 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %169, i32 0, i32 1
  %171 = load i32, i32* @UPRCL, align 4
  %172 = call i32 @IXGB_READ_REG(i32* %170, i32 %171)
  %173 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %174 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 55
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %172
  store i32 %177, i32* %175, align 4
  %178 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %178, i32 0, i32 1
  %180 = load i32, i32* @UPRCH, align 4
  %181 = call i32 @IXGB_READ_REG(i32* %179, i32 %180)
  %182 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %183 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 54
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, %181
  store i32 %186, i32* %184, align 8
  %187 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %188 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %187, i32 0, i32 1
  %189 = load i32, i32* @VPRCL, align 4
  %190 = call i32 @IXGB_READ_REG(i32* %188, i32 %189)
  %191 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %192 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 53
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %190
  store i32 %195, i32* %193, align 4
  %196 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %197 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %196, i32 0, i32 1
  %198 = load i32, i32* @VPRCH, align 4
  %199 = call i32 @IXGB_READ_REG(i32* %197, i32 %198)
  %200 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %201 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 52
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, %199
  store i32 %204, i32* %202, align 8
  %205 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %206 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %205, i32 0, i32 1
  %207 = load i32, i32* @JPRCL, align 4
  %208 = call i32 @IXGB_READ_REG(i32* %206, i32 %207)
  %209 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %210 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 51
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %208
  store i32 %213, i32* %211, align 4
  %214 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %215 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %214, i32 0, i32 1
  %216 = load i32, i32* @JPRCH, align 4
  %217 = call i32 @IXGB_READ_REG(i32* %215, i32 %216)
  %218 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %219 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 50
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, %217
  store i32 %222, i32* %220, align 8
  %223 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %224 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %223, i32 0, i32 1
  %225 = load i32, i32* @GORCL, align 4
  %226 = call i32 @IXGB_READ_REG(i32* %224, i32 %225)
  %227 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %228 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, %226
  store i32 %231, i32* %229, align 8
  %232 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %233 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %232, i32 0, i32 1
  %234 = load i32, i32* @GORCH, align 4
  %235 = call i32 @IXGB_READ_REG(i32* %233, i32 %234)
  %236 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %237 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 49
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %235
  store i32 %240, i32* %238, align 4
  %241 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %242 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %241, i32 0, i32 1
  %243 = load i32, i32* @TORL, align 4
  %244 = call i32 @IXGB_READ_REG(i32* %242, i32 %243)
  %245 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %246 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 48
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, %244
  store i32 %249, i32* %247, align 8
  %250 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %251 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %250, i32 0, i32 1
  %252 = load i32, i32* @TORH, align 4
  %253 = call i32 @IXGB_READ_REG(i32* %251, i32 %252)
  %254 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %255 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 47
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, %253
  store i32 %258, i32* %256, align 4
  %259 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %260 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %259, i32 0, i32 1
  %261 = load i32, i32* @RNBC, align 4
  %262 = call i32 @IXGB_READ_REG(i32* %260, i32 %261)
  %263 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %264 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 46
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, %262
  store i32 %267, i32* %265, align 8
  %268 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %269 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %268, i32 0, i32 1
  %270 = load i32, i32* @RUC, align 4
  %271 = call i32 @IXGB_READ_REG(i32* %269, i32 %270)
  %272 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %273 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, %271
  store i32 %276, i32* %274, align 4
  %277 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %278 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %277, i32 0, i32 1
  %279 = load i32, i32* @ROC, align 4
  %280 = call i32 @IXGB_READ_REG(i32* %278, i32 %279)
  %281 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %282 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, %280
  store i32 %285, i32* %283, align 8
  %286 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %287 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %286, i32 0, i32 1
  %288 = load i32, i32* @RLEC, align 4
  %289 = call i32 @IXGB_READ_REG(i32* %287, i32 %288)
  %290 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %291 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 45
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, %289
  store i32 %294, i32* %292, align 4
  %295 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %296 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %295, i32 0, i32 1
  %297 = load i32, i32* @CRCERRS, align 4
  %298 = call i32 @IXGB_READ_REG(i32* %296, i32 %297)
  %299 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %300 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, %298
  store i32 %303, i32* %301, align 4
  %304 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %305 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %304, i32 0, i32 1
  %306 = load i32, i32* @ICBC, align 4
  %307 = call i32 @IXGB_READ_REG(i32* %305, i32 %306)
  %308 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %309 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, %307
  store i32 %312, i32* %310, align 8
  %313 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %314 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %313, i32 0, i32 1
  %315 = load i32, i32* @ECBC, align 4
  %316 = call i32 @IXGB_READ_REG(i32* %314, i32 %315)
  %317 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %318 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, %316
  store i32 %321, i32* %319, align 4
  %322 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %323 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %322, i32 0, i32 1
  %324 = load i32, i32* @MPC, align 4
  %325 = call i32 @IXGB_READ_REG(i32* %323, i32 %324)
  %326 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %327 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, %325
  store i32 %330, i32* %328, align 8
  %331 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %332 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %331, i32 0, i32 1
  %333 = load i32, i32* @TPTL, align 4
  %334 = call i32 @IXGB_READ_REG(i32* %332, i32 %333)
  %335 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %336 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 44
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, %334
  store i32 %339, i32* %337, align 8
  %340 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %341 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %340, i32 0, i32 1
  %342 = load i32, i32* @TPTH, align 4
  %343 = call i32 @IXGB_READ_REG(i32* %341, i32 %342)
  %344 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %345 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 43
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, %343
  store i32 %348, i32* %346, align 4
  %349 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %350 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %349, i32 0, i32 1
  %351 = load i32, i32* @GPTCL, align 4
  %352 = call i32 @IXGB_READ_REG(i32* %350, i32 %351)
  %353 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %354 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 11
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, %352
  store i32 %357, i32* %355, align 4
  %358 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %359 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %358, i32 0, i32 1
  %360 = load i32, i32* @GPTCH, align 4
  %361 = call i32 @IXGB_READ_REG(i32* %359, i32 %360)
  %362 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %363 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 42
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, %361
  store i32 %366, i32* %364, align 8
  %367 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %368 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %367, i32 0, i32 1
  %369 = load i32, i32* @BPTCL, align 4
  %370 = call i32 @IXGB_READ_REG(i32* %368, i32 %369)
  %371 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %372 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 41
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, %370
  store i32 %375, i32* %373, align 4
  %376 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %377 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %376, i32 0, i32 1
  %378 = load i32, i32* @BPTCH, align 4
  %379 = call i32 @IXGB_READ_REG(i32* %377, i32 %378)
  %380 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %381 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 40
  %383 = load i32, i32* %382, align 8
  %384 = add nsw i32 %383, %379
  store i32 %384, i32* %382, align 8
  %385 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %386 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %385, i32 0, i32 1
  %387 = load i32, i32* @MPTCL, align 4
  %388 = call i32 @IXGB_READ_REG(i32* %386, i32 %387)
  %389 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %390 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 39
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, %388
  store i32 %393, i32* %391, align 4
  %394 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %395 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %394, i32 0, i32 1
  %396 = load i32, i32* @MPTCH, align 4
  %397 = call i32 @IXGB_READ_REG(i32* %395, i32 %396)
  %398 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %399 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 38
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %401, %397
  store i32 %402, i32* %400, align 8
  %403 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %404 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %403, i32 0, i32 1
  %405 = load i32, i32* @UPTCL, align 4
  %406 = call i32 @IXGB_READ_REG(i32* %404, i32 %405)
  %407 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %408 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %408, i32 0, i32 37
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, %406
  store i32 %411, i32* %409, align 4
  %412 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %413 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %412, i32 0, i32 1
  %414 = load i32, i32* @UPTCH, align 4
  %415 = call i32 @IXGB_READ_REG(i32* %413, i32 %414)
  %416 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %417 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 36
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, %415
  store i32 %420, i32* %418, align 8
  %421 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %422 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %421, i32 0, i32 1
  %423 = load i32, i32* @VPTCL, align 4
  %424 = call i32 @IXGB_READ_REG(i32* %422, i32 %423)
  %425 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %426 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 35
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %428, %424
  store i32 %429, i32* %427, align 4
  %430 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %431 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %430, i32 0, i32 1
  %432 = load i32, i32* @VPTCH, align 4
  %433 = call i32 @IXGB_READ_REG(i32* %431, i32 %432)
  %434 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %435 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 34
  %437 = load i32, i32* %436, align 8
  %438 = add nsw i32 %437, %433
  store i32 %438, i32* %436, align 8
  %439 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %440 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %439, i32 0, i32 1
  %441 = load i32, i32* @JPTCL, align 4
  %442 = call i32 @IXGB_READ_REG(i32* %440, i32 %441)
  %443 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %444 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i32 0, i32 33
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %446, %442
  store i32 %447, i32* %445, align 4
  %448 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %449 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %448, i32 0, i32 1
  %450 = load i32, i32* @JPTCH, align 4
  %451 = call i32 @IXGB_READ_REG(i32* %449, i32 %450)
  %452 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %453 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 32
  %455 = load i32, i32* %454, align 8
  %456 = add nsw i32 %455, %451
  store i32 %456, i32* %454, align 8
  %457 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %458 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %457, i32 0, i32 1
  %459 = load i32, i32* @GOTCL, align 4
  %460 = call i32 @IXGB_READ_REG(i32* %458, i32 %459)
  %461 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %462 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 9
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, %460
  store i32 %465, i32* %463, align 4
  %466 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %467 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %466, i32 0, i32 1
  %468 = load i32, i32* @GOTCH, align 4
  %469 = call i32 @IXGB_READ_REG(i32* %467, i32 %468)
  %470 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %471 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 31
  %473 = load i32, i32* %472, align 4
  %474 = add nsw i32 %473, %469
  store i32 %474, i32* %472, align 4
  %475 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %476 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %475, i32 0, i32 1
  %477 = load i32, i32* @TOTL, align 4
  %478 = call i32 @IXGB_READ_REG(i32* %476, i32 %477)
  %479 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %480 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 30
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %482, %478
  store i32 %483, i32* %481, align 8
  %484 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %485 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %484, i32 0, i32 1
  %486 = load i32, i32* @TOTH, align 4
  %487 = call i32 @IXGB_READ_REG(i32* %485, i32 %486)
  %488 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %489 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 29
  %491 = load i32, i32* %490, align 4
  %492 = add nsw i32 %491, %487
  store i32 %492, i32* %490, align 4
  %493 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %494 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %493, i32 0, i32 1
  %495 = load i32, i32* @DC, align 4
  %496 = call i32 @IXGB_READ_REG(i32* %494, i32 %495)
  %497 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %498 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 28
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %500, %496
  store i32 %501, i32* %499, align 8
  %502 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %503 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %502, i32 0, i32 1
  %504 = load i32, i32* @PLT64C, align 4
  %505 = call i32 @IXGB_READ_REG(i32* %503, i32 %504)
  %506 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %507 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %507, i32 0, i32 27
  %509 = load i32, i32* %508, align 4
  %510 = add nsw i32 %509, %505
  store i32 %510, i32* %508, align 4
  %511 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %512 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %511, i32 0, i32 1
  %513 = load i32, i32* @TSCTC, align 4
  %514 = call i32 @IXGB_READ_REG(i32* %512, i32 %513)
  %515 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %516 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %516, i32 0, i32 26
  %518 = load i32, i32* %517, align 8
  %519 = add nsw i32 %518, %514
  store i32 %519, i32* %517, align 8
  %520 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %521 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %520, i32 0, i32 1
  %522 = load i32, i32* @TSCTFC, align 4
  %523 = call i32 @IXGB_READ_REG(i32* %521, i32 %522)
  %524 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %525 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %525, i32 0, i32 25
  %527 = load i32, i32* %526, align 4
  %528 = add nsw i32 %527, %523
  store i32 %528, i32* %526, align 4
  %529 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %530 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %529, i32 0, i32 1
  %531 = load i32, i32* @IBIC, align 4
  %532 = call i32 @IXGB_READ_REG(i32* %530, i32 %531)
  %533 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %534 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %534, i32 0, i32 24
  %536 = load i32, i32* %535, align 8
  %537 = add nsw i32 %536, %532
  store i32 %537, i32* %535, align 8
  %538 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %539 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %538, i32 0, i32 1
  %540 = load i32, i32* @RFC, align 4
  %541 = call i32 @IXGB_READ_REG(i32* %539, i32 %540)
  %542 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %543 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %543, i32 0, i32 23
  %545 = load i32, i32* %544, align 4
  %546 = add nsw i32 %545, %541
  store i32 %546, i32* %544, align 4
  %547 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %548 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %547, i32 0, i32 1
  %549 = load i32, i32* @LFC, align 4
  %550 = call i32 @IXGB_READ_REG(i32* %548, i32 %549)
  %551 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %552 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 22
  %554 = load i32, i32* %553, align 8
  %555 = add nsw i32 %554, %550
  store i32 %555, i32* %553, align 8
  %556 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %557 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %556, i32 0, i32 1
  %558 = load i32, i32* @PFRC, align 4
  %559 = call i32 @IXGB_READ_REG(i32* %557, i32 %558)
  %560 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %561 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %561, i32 0, i32 21
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, %559
  store i32 %564, i32* %562, align 4
  %565 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %566 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %565, i32 0, i32 1
  %567 = load i32, i32* @PFTC, align 4
  %568 = call i32 @IXGB_READ_REG(i32* %566, i32 %567)
  %569 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %570 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %570, i32 0, i32 20
  %572 = load i32, i32* %571, align 8
  %573 = add nsw i32 %572, %568
  store i32 %573, i32* %571, align 8
  %574 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %575 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %574, i32 0, i32 1
  %576 = load i32, i32* @MCFRC, align 4
  %577 = call i32 @IXGB_READ_REG(i32* %575, i32 %576)
  %578 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %579 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %579, i32 0, i32 19
  %581 = load i32, i32* %580, align 4
  %582 = add nsw i32 %581, %577
  store i32 %582, i32* %580, align 4
  %583 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %584 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %583, i32 0, i32 1
  %585 = load i32, i32* @MCFTC, align 4
  %586 = call i32 @IXGB_READ_REG(i32* %584, i32 %585)
  %587 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %588 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %588, i32 0, i32 18
  %590 = load i32, i32* %589, align 8
  %591 = add nsw i32 %590, %586
  store i32 %591, i32* %589, align 8
  %592 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %593 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %592, i32 0, i32 1
  %594 = load i32, i32* @XONRXC, align 4
  %595 = call i32 @IXGB_READ_REG(i32* %593, i32 %594)
  %596 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %597 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %597, i32 0, i32 17
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %599, %595
  store i32 %600, i32* %598, align 4
  %601 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %602 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %601, i32 0, i32 1
  %603 = load i32, i32* @XONTXC, align 4
  %604 = call i32 @IXGB_READ_REG(i32* %602, i32 %603)
  %605 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %606 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %606, i32 0, i32 16
  %608 = load i32, i32* %607, align 8
  %609 = add nsw i32 %608, %604
  store i32 %609, i32* %607, align 8
  %610 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %611 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %610, i32 0, i32 1
  %612 = load i32, i32* @XOFFRXC, align 4
  %613 = call i32 @IXGB_READ_REG(i32* %611, i32 %612)
  %614 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %615 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %615, i32 0, i32 15
  %617 = load i32, i32* %616, align 4
  %618 = add nsw i32 %617, %613
  store i32 %618, i32* %616, align 4
  %619 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %620 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %619, i32 0, i32 1
  %621 = load i32, i32* @XOFFTXC, align 4
  %622 = call i32 @IXGB_READ_REG(i32* %620, i32 %621)
  %623 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %624 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %623, i32 0, i32 0
  %625 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %624, i32 0, i32 14
  %626 = load i32, i32* %625, align 8
  %627 = add nsw i32 %626, %622
  store i32 %627, i32* %625, align 8
  %628 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %629 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %628, i32 0, i32 1
  %630 = load i32, i32* @RJC, align 4
  %631 = call i32 @IXGB_READ_REG(i32* %629, i32 %630)
  %632 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %633 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %633, i32 0, i32 13
  %635 = load i32, i32* %634, align 4
  %636 = add nsw i32 %635, %631
  store i32 %636, i32* %634, align 4
  %637 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %638 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %638, i32 0, i32 12
  %640 = load i32, i32* %639, align 8
  %641 = load %struct.net_device*, %struct.net_device** %3, align 8
  %642 = getelementptr inbounds %struct.net_device, %struct.net_device* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %642, i32 0, i32 17
  store i32 %640, i32* %643, align 4
  %644 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %645 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %644, i32 0, i32 0
  %646 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %645, i32 0, i32 11
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.net_device*, %struct.net_device** %3, align 8
  %649 = getelementptr inbounds %struct.net_device, %struct.net_device* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %649, i32 0, i32 16
  store i32 %647, i32* %650, align 8
  %651 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %652 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %652, i32 0, i32 10
  %654 = load i32, i32* %653, align 8
  %655 = load %struct.net_device*, %struct.net_device** %3, align 8
  %656 = getelementptr inbounds %struct.net_device, %struct.net_device* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 15
  store i32 %654, i32* %657, align 4
  %658 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %659 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %659, i32 0, i32 9
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.net_device*, %struct.net_device** %3, align 8
  %663 = getelementptr inbounds %struct.net_device, %struct.net_device* %662, i32 0, i32 1
  %664 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %663, i32 0, i32 14
  store i32 %661, i32* %664, align 8
  %665 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %666 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %665, i32 0, i32 0
  %667 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = load %struct.net_device*, %struct.net_device** %3, align 8
  %670 = getelementptr inbounds %struct.net_device, %struct.net_device* %669, i32 0, i32 1
  %671 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %670, i32 0, i32 0
  store i32 %668, i32* %671, align 8
  %672 = load %struct.net_device*, %struct.net_device** %3, align 8
  %673 = getelementptr inbounds %struct.net_device, %struct.net_device* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %673, i32 0, i32 13
  store i64 0, i64* %674, align 8
  %675 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %676 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %676, i32 0, i32 5
  %678 = load i32, i32* %677, align 4
  %679 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %680 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %679, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %680, i32 0, i32 3
  %682 = load i32, i32* %681, align 4
  %683 = add nsw i32 %678, %682
  %684 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %685 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %685, i32 0, i32 4
  %687 = load i32, i32* %686, align 8
  %688 = add nsw i32 %683, %687
  %689 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %690 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %690, i32 0, i32 6
  %692 = load i32, i32* %691, align 8
  %693 = add nsw i32 %688, %692
  %694 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %695 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %695, i32 0, i32 7
  %697 = load i32, i32* %696, align 4
  %698 = add nsw i32 %693, %697
  %699 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %700 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %699, i32 0, i32 0
  %701 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %700, i32 0, i32 8
  %702 = load i32, i32* %701, align 8
  %703 = add nsw i32 %698, %702
  %704 = load %struct.net_device*, %struct.net_device** %3, align 8
  %705 = getelementptr inbounds %struct.net_device, %struct.net_device* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %705, i32 0, i32 1
  store i32 %703, i32* %706, align 4
  %707 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %708 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %708, i32 0, i32 5
  %710 = load i32, i32* %709, align 4
  %711 = load %struct.net_device*, %struct.net_device** %3, align 8
  %712 = getelementptr inbounds %struct.net_device, %struct.net_device* %711, i32 0, i32 1
  %713 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %712, i32 0, i32 2
  store i32 %710, i32* %713, align 8
  %714 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %715 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %715, i32 0, i32 8
  %717 = load i32, i32* %716, align 8
  %718 = load %struct.net_device*, %struct.net_device** %3, align 8
  %719 = getelementptr inbounds %struct.net_device, %struct.net_device* %718, i32 0, i32 1
  %720 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %719, i32 0, i32 3
  store i32 %717, i32* %720, align 4
  %721 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %722 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i32 0, i32 8
  %724 = load i32, i32* %723, align 8
  %725 = load %struct.net_device*, %struct.net_device** %3, align 8
  %726 = getelementptr inbounds %struct.net_device, %struct.net_device* %725, i32 0, i32 1
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %726, i32 0, i32 4
  store i32 %724, i32* %727, align 8
  %728 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %729 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %728, i32 0, i32 0
  %730 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %729, i32 0, i32 8
  %731 = load i32, i32* %730, align 8
  %732 = load %struct.net_device*, %struct.net_device** %3, align 8
  %733 = getelementptr inbounds %struct.net_device, %struct.net_device* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %733, i32 0, i32 5
  store i32 %731, i32* %734, align 4
  %735 = load %struct.net_device*, %struct.net_device** %3, align 8
  %736 = getelementptr inbounds %struct.net_device, %struct.net_device* %735, i32 0, i32 1
  %737 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %736, i32 0, i32 12
  store i64 0, i64* %737, align 8
  %738 = load %struct.net_device*, %struct.net_device** %3, align 8
  %739 = getelementptr inbounds %struct.net_device, %struct.net_device* %738, i32 0, i32 1
  %740 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %739, i32 0, i32 11
  store i64 0, i64* %740, align 8
  %741 = load %struct.net_device*, %struct.net_device** %3, align 8
  %742 = getelementptr inbounds %struct.net_device, %struct.net_device* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %742, i32 0, i32 10
  store i64 0, i64* %743, align 8
  %744 = load %struct.net_device*, %struct.net_device** %3, align 8
  %745 = getelementptr inbounds %struct.net_device, %struct.net_device* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %745, i32 0, i32 9
  store i64 0, i64* %746, align 8
  %747 = load %struct.net_device*, %struct.net_device** %3, align 8
  %748 = getelementptr inbounds %struct.net_device, %struct.net_device* %747, i32 0, i32 1
  %749 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %748, i32 0, i32 8
  store i64 0, i64* %749, align 8
  %750 = load %struct.net_device*, %struct.net_device** %3, align 8
  %751 = getelementptr inbounds %struct.net_device, %struct.net_device* %750, i32 0, i32 1
  %752 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %751, i32 0, i32 7
  store i64 0, i64* %752, align 8
  %753 = load %struct.net_device*, %struct.net_device** %3, align 8
  %754 = getelementptr inbounds %struct.net_device, %struct.net_device* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %754, i32 0, i32 6
  store i64 0, i64* %755, align 8
  br label %756

756:                                              ; preds = %132, %18
  ret void
}

declare dso_local i64 @pci_channel_offline(%struct.pci_dev*) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @IXGB_READ_REG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
