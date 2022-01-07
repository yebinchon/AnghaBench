; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.aq_nic_s = type { i32, %struct.TYPE_5__*, %struct.pci_dev*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AQ_CFG_VECS_DEF = common dso_local global i64 0, align 8
@AQ_HW_SERVICE_IRQS = common dso_local global i64 0, align 8
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @aq_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @pci_enable_device(%struct.pci_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %208

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @aq_pci_func_init(%struct.pci_dev* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %204

25:                                               ; preds = %19
  %26 = call %struct.net_device* (...) @aq_ndev_alloc()
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %201

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %33)
  store %struct.aq_nic_s* %34, %struct.aq_nic_s** %6, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %37 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %36, i32 0, i32 2
  store %struct.pci_dev* %35, %struct.pci_dev** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @SET_NETDEV_DEV(%struct.net_device* %38, i32* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %44 = call i32 @pci_set_drvdata(%struct.pci_dev* %42, %struct.aq_nic_s* %43)
  %45 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %46 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %45, i32 0, i32 4
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %50 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %49, i32 0, i32 3
  %51 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %52 = call %struct.TYPE_7__* @aq_nic_get_cfg(%struct.aq_nic_s* %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @aq_pci_probe_get_hw_by_id(%struct.pci_dev* %48, i32* %50, %struct.TYPE_6__** %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %32
  br label %198

58:                                               ; preds = %32
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.TYPE_5__* @kzalloc(i32 16, i32 %59)
  %61 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %62 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %61, i32 0, i32 1
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %64 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %198

70:                                               ; preds = %58
  %71 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %72 = call %struct.TYPE_7__* @aq_nic_get_cfg(%struct.aq_nic_s* %71)
  %73 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %74 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %76, align 8
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %124, %70
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %127

80:                                               ; preds = %77
  %81 = load i32, i32* @IORESOURCE_MEM, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @pci_resource_flags(%struct.pci_dev* %82, i32 %83)
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %80
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @pci_resource_start(%struct.pci_dev* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %193

96:                                               ; preds = %87
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @pci_resource_len(%struct.pci_dev* %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ule i32 %100, 24
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %193

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @ioremap_nocache(i32 %106, i32 %107)
  %109 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %110 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  %113 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %114 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %105
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %193

122:                                              ; preds = %105
  br label %127

123:                                              ; preds = %80
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %77

127:                                              ; preds = %122, %77
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  br label %193

133:                                              ; preds = %127
  %134 = load i64, i64* @AQ_CFG_VECS_DEF, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %137 = call %struct.TYPE_7__* @aq_nic_get_cfg(%struct.aq_nic_s* %136)
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @min(i32 %135, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 (...) @num_online_cpus()
  %145 = call i32 @min(i32 %143, i32 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i64, i64* @AQ_HW_SERVICE_IRQS, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %11, align 4
  %151 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %152 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %151, i32 0, i32 2
  %153 = load %struct.pci_dev*, %struct.pci_dev** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %156 = load i32, i32* @PCI_IRQ_MSI, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %153, i32 1, i32 %154, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %133
  br label %186

164:                                              ; preds = %133
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %168 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %170 = call i32 @aq_nic_cfg_start(%struct.aq_nic_s* %169)
  %171 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %172 = call i32 @aq_nic_ndev_init(%struct.aq_nic_s* %171)
  %173 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %174 = call i32 @aq_nic_ndev_register(%struct.aq_nic_s* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %164
  br label %181

178:                                              ; preds = %164
  %179 = load %struct.net_device*, %struct.net_device** %8, align 8
  %180 = call i32 @aq_drvinfo_init(%struct.net_device* %179)
  store i32 0, i32* %3, align 4
  br label %208

181:                                              ; preds = %177
  %182 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %183 = call i32 @aq_nic_free_vectors(%struct.aq_nic_s* %182)
  %184 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %185 = call i32 @aq_pci_free_irq_vectors(%struct.aq_nic_s* %184)
  br label %186

186:                                              ; preds = %181, %163
  %187 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %188 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %187, i32 0, i32 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @iounmap(i32 %191)
  br label %193

193:                                              ; preds = %186, %130, %119, %102, %93
  %194 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %195 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %194, i32 0, i32 1
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = call i32 @kfree(%struct.TYPE_5__* %196)
  br label %198

198:                                              ; preds = %193, %67, %57
  %199 = load %struct.net_device*, %struct.net_device** %8, align 8
  %200 = call i32 @free_netdev(%struct.net_device* %199)
  br label %201

201:                                              ; preds = %198, %29
  %202 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %203 = call i32 @pci_release_regions(%struct.pci_dev* %202)
  br label %204

204:                                              ; preds = %201, %24
  %205 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %206 = call i32 @pci_disable_device(%struct.pci_dev* %205)
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %178, %17
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @aq_pci_func_init(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @aq_ndev_alloc(...) #1

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.aq_nic_s*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @aq_pci_probe_get_hw_by_id(%struct.pci_dev*, i32*, %struct.TYPE_6__**) #1

declare dso_local %struct.TYPE_7__* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @aq_nic_cfg_start(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_ndev_init(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_ndev_register(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_drvinfo_init(%struct.net_device*) #1

declare dso_local i32 @aq_nic_free_vectors(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_pci_free_irq_vectors(%struct.aq_nic_s*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
