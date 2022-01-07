; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_ddp_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_ddp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ixgbe_fcoe = type { i32, %struct.ixgbe_fcoe_ddp* }
%struct.ixgbe_fcoe_ddp = type { i32, i32*, i32, i32, i32, i64, i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_4__*, %struct.ixgbe_hw, %struct.ixgbe_fcoe }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_FCFLTRW_WE = common dso_local global i64 0, align 8
@IXGBE_FCDMARW_WE = common dso_local global i64 0, align 8
@IXGBE_FCDMARW_RE = common dso_local global i64 0, align 8
@IXGBE_FCFLT = common dso_local global i32 0, align 4
@IXGBE_FCFLTRW = common dso_local global i32 0, align 4
@IXGBE_FCBUFF = common dso_local global i32 0, align 4
@IXGBE_FCDMARW = common dso_local global i32 0, align 4
@IXGBE_FCBUFF_VALID = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fcoe_ddp_put(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_fcoe*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_fcoe_ddp*, align 8
  %10 = alloca %struct.ixgbe_hw*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %171

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %171

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %23)
  store %struct.ixgbe_adapter* %24, %struct.ixgbe_adapter** %8, align 8
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 2
  store %struct.ixgbe_fcoe* %26, %struct.ixgbe_fcoe** %7, align 8
  %27 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %7, align 8
  %28 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %27, i32 0, i32 1
  %29 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %29, i64 %30
  store %struct.ixgbe_fcoe_ddp* %31, %struct.ixgbe_fcoe_ddp** %9, align 8
  %32 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %33 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %171

37:                                               ; preds = %22
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 1
  store %struct.ixgbe_hw* %39, %struct.ixgbe_hw** %10, align 8
  %40 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %41 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %44 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %131

48:                                               ; preds = %37
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ixgbe_mac_X550, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %48
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @IXGBE_FCDFC(i32 0, i64 %57)
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %58, i64 0)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @IXGBE_FCDFC(i32 3, i64 %61)
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @IXGBE_FCFLTRW_WE, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %62, i64 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @IXGBE_FCDDC(i32 2, i64 %68)
  %70 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %67, i32 %69, i64 0)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @IXGBE_FCDDC(i32 3, i64 %72)
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @IXGBE_FCDMARW_WE, align 8
  %76 = or i64 %74, %75
  %77 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %71, i32 %73, i64 %76)
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @IXGBE_FCDDC(i32 3, i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @IXGBE_FCDMARW_RE, align 8
  %83 = or i64 %81, %82
  %84 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %78, i32 %80, i64 %83)
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @IXGBE_FCDDC(i32 2, i64 %86)
  %88 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %85, i32 %87)
  store i32 %88, i32* %11, align 4
  br label %123

89:                                               ; preds = %48
  %90 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %7, align 8
  %91 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_bh(i32* %91)
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %94 = load i32, i32* @IXGBE_FCFLT, align 4
  %95 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %93, i32 %94, i64 0)
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %97 = load i32, i32* @IXGBE_FCFLTRW, align 4
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @IXGBE_FCFLTRW_WE, align 8
  %100 = or i64 %98, %99
  %101 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %96, i32 %97, i64 %100)
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %103 = load i32, i32* @IXGBE_FCBUFF, align 4
  %104 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %102, i32 %103, i64 0)
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %106 = load i32, i32* @IXGBE_FCDMARW, align 4
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @IXGBE_FCDMARW_WE, align 8
  %109 = or i64 %107, %108
  %110 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %105, i32 %106, i64 %109)
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %112 = load i32, i32* @IXGBE_FCDMARW, align 4
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* @IXGBE_FCDMARW_RE, align 8
  %115 = or i64 %113, %114
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %111, i32 %112, i64 %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %118 = load i32, i32* @IXGBE_FCBUFF, align 4
  %119 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %7, align 8
  %121 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock_bh(i32* %121)
  br label %123

123:                                              ; preds = %89, %55
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @IXGBE_FCBUFF_VALID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @usleep_range(i32 100, i32 150)
  br label %130

130:                                              ; preds = %128, %123
  br label %131

131:                                              ; preds = %130, %47
  %132 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %133 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %138 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %142 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %145 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @dma_unmap_sg(i32* %140, i64 %143, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %136, %131
  %150 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %151 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %156 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %159 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %162 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dma_pool_free(i32* %157, i32 %160, i32 %163)
  %165 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %166 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %165, i32 0, i32 1
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %154, %149
  %168 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %9, align 8
  %169 = call i32 @ixgbe_fcoe_clear_ddp(%struct.ixgbe_fcoe_ddp* %168)
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %167, %36, %21, %14
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_FCDFC(i32, i64) #1

declare dso_local i32 @IXGBE_FCDDC(i32, i64) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32*, i32, i32) #1

declare dso_local i32 @ixgbe_fcoe_clear_ddp(%struct.ixgbe_fcoe_ddp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
