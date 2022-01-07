; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet.c_vnet_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet.c_vnet_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32, i32 }
%struct.vio_device_id = type { i32 }
%struct.mdesc_handle = type { i32 }
%struct.vnet_port = type { i32*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.vnet* }
%struct.vnet = type { %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Cannot find port parent vnet\0A\00", align 1
@remote_macaddr_prop = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Port lacks %s property\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VDEV_NETWORK = common dso_local global i32 0, align 4
@vnet_versions = common dso_local global i32 0, align 4
@vnet_vio_ops = common dso_local global i32 0, align 4
@vnet_ldc_cfg = common dso_local global i32 0, align 4
@sunvnet_poll_common = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"switch-port\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: PORT ( remote-mac %pM%s )\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" switch-port\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sunvnet_clean_timer_expire_common = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @vnet_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_port_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.mdesc_handle*, align 8
  %7 = alloca %struct.vnet_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vnet*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  %15 = call %struct.mdesc_handle* (...) @mdesc_grab()
  store %struct.mdesc_handle* %15, %struct.mdesc_handle** %6, align 8
  %16 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %17 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %18 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %21 = call %struct.vnet* @vnet_find_parent(%struct.mdesc_handle* %16, i32 %19, %struct.vio_dev* %20)
  store %struct.vnet* %21, %struct.vnet** %9, align 8
  %22 = load %struct.vnet*, %struct.vnet** %9, align 8
  %23 = call i64 @IS_ERR(%struct.vnet* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.vnet*, %struct.vnet** %9, align 8
  %28 = call i32 @PTR_ERR(%struct.vnet* %27)
  store i32 %28, i32* %13, align 4
  br label %201

29:                                               ; preds = %2
  %30 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %31 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** @remote_macaddr_prop, align 8
  %35 = call i32* @mdesc_get_property(%struct.mdesc_handle* %30, i32 %33, i8* %34, i32* %11)
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i8*, i8** @remote_macaddr_prop, align 8
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %201

43:                                               ; preds = %29
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.vnet_port* @kzalloc(i32 56, i32 %44)
  store %struct.vnet_port* %45, %struct.vnet_port** %7, align 8
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  %48 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %49 = icmp ne %struct.vnet_port* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %201

51:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 5, %59
  %61 = mul nsw i32 %60, 8
  %62 = ashr i32 %58, %61
  %63 = and i32 %62, 255
  %64 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %65 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %52

73:                                               ; preds = %52
  %74 = load %struct.vnet*, %struct.vnet** %9, align 8
  %75 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %76 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %75, i32 0, i32 9
  store %struct.vnet* %74, %struct.vnet** %76, align 8
  %77 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %78 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %77, i32 0, i32 3
  %79 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %80 = load i32, i32* @VDEV_NETWORK, align 4
  %81 = load i32, i32* @vnet_versions, align 4
  %82 = load i32, i32* @vnet_versions, align 4
  %83 = call i32 @ARRAY_SIZE(i32 %82)
  %84 = load %struct.vnet*, %struct.vnet** %9, align 8
  %85 = getelementptr inbounds %struct.vnet, %struct.vnet* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @vio_driver_init(i32* %78, %struct.vio_dev* %79, i32 %80, i32 %81, i32 %83, i32* @vnet_vio_ops, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %198

93:                                               ; preds = %73
  %94 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %95 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %94, i32 0, i32 3
  %96 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %97 = call i32 @vio_ldc_alloc(i32* %95, i32* @vnet_ldc_cfg, %struct.vnet_port* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %198

101:                                              ; preds = %93
  %102 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %103 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %102, i32 0, i32 9
  %104 = load %struct.vnet*, %struct.vnet** %103, align 8
  %105 = getelementptr inbounds %struct.vnet, %struct.vnet* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %108 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %107, i32 0, i32 4
  %109 = load i32, i32* @sunvnet_poll_common, align 4
  %110 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %111 = call i32 @netif_napi_add(%struct.TYPE_2__* %106, i32* %108, i32 %109, i32 %110)
  %112 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %113 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %112, i32 0, i32 6
  %114 = call i32 @INIT_HLIST_NODE(i32* %113)
  %115 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %116 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %115, i32 0, i32 7
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  store i32 0, i32* %14, align 4
  %118 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %119 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %120 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32* @mdesc_get_property(%struct.mdesc_handle* %118, i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %101
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %128 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %130 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %129, i32 0, i32 2
  store i32 1, i32* %130, align 4
  %131 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %132 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %131, i32 0, i32 8
  store i64 0, i64* %132, align 8
  %133 = load %struct.vnet*, %struct.vnet** %9, align 8
  %134 = getelementptr inbounds %struct.vnet, %struct.vnet* %133, i32 0, i32 1
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @spin_lock_irqsave(i32* %134, i64 %135)
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %141 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %140, i32 0, i32 7
  %142 = load %struct.vnet*, %struct.vnet** %9, align 8
  %143 = getelementptr inbounds %struct.vnet, %struct.vnet* %142, i32 0, i32 3
  %144 = call i32 @list_add_rcu(i32* %141, i32* %143)
  br label %151

145:                                              ; preds = %125
  %146 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %147 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %146, i32 0, i32 7
  %148 = load %struct.vnet*, %struct.vnet** %9, align 8
  %149 = getelementptr inbounds %struct.vnet, %struct.vnet* %148, i32 0, i32 3
  %150 = call i32 @list_add_tail_rcu(i32* %147, i32* %149)
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %153 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %152, i32 0, i32 6
  %154 = load %struct.vnet*, %struct.vnet** %9, align 8
  %155 = getelementptr inbounds %struct.vnet, %struct.vnet* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %158 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @vnet_hashfn(i32* %159)
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = call i32 @hlist_add_head_rcu(i32* %153, i32* %161)
  %163 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %164 = call i32 @sunvnet_port_add_txq_common(%struct.vnet_port* %163)
  %165 = load %struct.vnet*, %struct.vnet** %9, align 8
  %166 = getelementptr inbounds %struct.vnet, %struct.vnet* %165, i32 0, i32 1
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %170 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %169, i32 0, i32 0
  %171 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %172 = call i32 @dev_set_drvdata(i32* %170, %struct.vnet_port* %171)
  %173 = load %struct.vnet*, %struct.vnet** %9, align 8
  %174 = getelementptr inbounds %struct.vnet, %struct.vnet* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %179 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %185 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %177, i32* %180, i8* %184)
  %186 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %187 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %186, i32 0, i32 5
  %188 = load i32, i32* @sunvnet_clean_timer_expire_common, align 4
  %189 = call i32 @timer_setup(i32* %187, i32 %188, i32 0)
  %190 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %191 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %190, i32 0, i32 4
  %192 = call i32 @napi_enable(i32* %191)
  %193 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %194 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %193, i32 0, i32 3
  %195 = call i32 @vio_port_up(i32* %194)
  %196 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %197 = call i32 @mdesc_release(%struct.mdesc_handle* %196)
  store i32 0, i32* %3, align 4
  br label %205

198:                                              ; preds = %100, %92
  %199 = load %struct.vnet_port*, %struct.vnet_port** %7, align 8
  %200 = call i32 @kfree(%struct.vnet_port* %199)
  br label %201

201:                                              ; preds = %198, %50, %40, %25
  %202 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %203 = call i32 @mdesc_release(%struct.mdesc_handle* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %201, %151
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.mdesc_handle* @mdesc_grab(...) #1

declare dso_local %struct.vnet* @vnet_find_parent(%struct.mdesc_handle*, i32, %struct.vio_dev*) #1

declare dso_local i64 @IS_ERR(%struct.vnet*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.vnet*) #1

declare dso_local i32* @mdesc_get_property(%struct.mdesc_handle*, i32, i8*, i32*) #1

declare dso_local %struct.vnet_port* @kzalloc(i32, i32) #1

declare dso_local i32 @vio_driver_init(i32*, %struct.vio_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @vio_ldc_alloc(i32*, i32*, %struct.vnet_port*) #1

declare dso_local i32 @netif_napi_add(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i64 @vnet_hashfn(i32*) #1

declare dso_local i32 @sunvnet_port_add_txq_common(%struct.vnet_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.vnet_port*) #1

declare dso_local i32 @pr_info(i8*, i32, i32*, i8*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @vio_port_up(i32*) #1

declare dso_local i32 @mdesc_release(%struct.mdesc_handle*) #1

declare dso_local i32 @kfree(%struct.vnet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
