; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mii-fec.c_fs_enet_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mii-fec.c_fs_enet_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type opaque
%struct.of_device_id = type { i32 (%struct.device_node*)* }
%struct.resource = type { i32 }
%struct.mii_bus = type { i8*, %struct.TYPE_6__*, i32, i32, i32*, i32*, %struct.fec_info* }
%struct.fec_info = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@fs_enet_mdio_fec_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"FEC MII Bus\00", align 1
@fs_enet_fec_mii_read = common dso_local global i32 0, align 4
@fs_enet_fec_mii_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not determine IPS clock\0A\00", align 1
@ppc_proc_freq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"MII clock (%d Hz) exceeds max (2.5 MHz)\0A\00", align 1
@FEC_RCNTRL_MII_MODE = common dso_local global i32 0, align 4
@FEC_ECNTRL_PINMUX = common dso_local global i32 0, align 4
@FEC_ECNTRL_ETHER_EN = common dso_local global i32 0, align 4
@FEC_ENET_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fs_enet_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.resource, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca %struct.fec_info*, align 8
  %8 = alloca i32 (%struct.device_node*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @fs_enet_mdio_fec_match, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.TYPE_6__* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %4, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %174

23:                                               ; preds = %1
  %24 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %25, align 8
  store i32 (%struct.device_node*)* %26, i32 (%struct.device_node*)** %8, align 8
  %27 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %27, %struct.mii_bus** %6, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %29 = icmp ne %struct.mii_bus* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %172

31:                                               ; preds = %23
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.fec_info* @kzalloc(i32 16, i32 %32)
  store %struct.fec_info* %33, %struct.fec_info** %7, align 8
  %34 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %35 = icmp ne %struct.fec_info* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %169

37:                                               ; preds = %31
  %38 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %40 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %39, i32 0, i32 6
  store %struct.fec_info* %38, %struct.fec_info** %40, align 8
  %41 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 5
  store i32* @fs_enet_fec_mii_read, i32** %44, align 8
  %45 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %46 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %45, i32 0, i32 4
  store i32* @fs_enet_fec_mii_write, i32** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.device_node*, %struct.device_node** %49, align 8
  %51 = call i32 @of_address_to_resource(%struct.device_node* %50, i32 0, %struct.resource* %5)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %165

55:                                               ; preds = %37
  %56 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %57 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snprintf(i32 %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @resource_size(%struct.resource* %5)
  %66 = call %struct.TYPE_7__* @ioremap(i32 %64, i32 %65)
  %67 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %68 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %67, i32 0, i32 1
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %70 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %166

76:                                               ; preds = %55
  %77 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %8, align 8
  %78 = icmp ne i32 (%struct.device_node*)* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32 (%struct.device_node*)*, i32 (%struct.device_node*)** %8, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.device_node*, %struct.device_node** %83, align 8
  %85 = call i32 %80(%struct.device_node* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %79
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_warn(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 315000000, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %79
  br label %95

93:                                               ; preds = %76
  %94 = load i32, i32* @ppc_proc_freq, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 4999999
  %98 = sdiv i32 %97, 5000000
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sgt i32 %99, 63
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  store i32 63, i32* %11, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sdiv i32 %104, %105
  %107 = call i32 @dev_err(%struct.TYPE_6__* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %95
  %109 = load i32, i32* %11, align 4
  %110 = shl i32 %109, 1
  %111 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %112 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %114 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i32, i32* @FEC_RCNTRL_MII_MODE, align 4
  %118 = call i32 @setbits32(i32* %116, i32 %117)
  %119 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %120 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* @FEC_ECNTRL_PINMUX, align 4
  %124 = load i32, i32* @FEC_ECNTRL_ETHER_EN, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @setbits32(i32* %122, i32 %125)
  %127 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %128 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* @FEC_ENET_MII, align 4
  %132 = call i32 @out_be32(i32* %130, i32 %131)
  %133 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %134 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %138 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @clrsetbits_be32(i32* %136, i32 126, i32 %139)
  %141 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %142 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %141, i32 0, i32 2
  store i32 -1, i32* %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %146 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %145, i32 0, i32 1
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %146, align 8
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %149 = call i32 @platform_set_drvdata(%struct.platform_device* %147, %struct.mii_bus* %148)
  %150 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.device_node*, %struct.device_node** %153, align 8
  %155 = call i32 @of_mdiobus_register(%struct.mii_bus* %150, %struct.device_node* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %108
  br label %160

159:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %174

160:                                              ; preds = %158
  %161 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %162 = getelementptr inbounds %struct.fec_info, %struct.fec_info* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = call i32 @iounmap(%struct.TYPE_7__* %163)
  br label %165

165:                                              ; preds = %160, %54
  br label %166

166:                                              ; preds = %165, %73
  %167 = load %struct.fec_info*, %struct.fec_info** %7, align 8
  %168 = call i32 @kfree(%struct.fec_info* %167)
  br label %169

169:                                              ; preds = %166, %36
  %170 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %171 = call i32 @mdiobus_free(%struct.mii_bus* %170)
  br label %172

172:                                              ; preds = %169, %30
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %159, %20
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local %struct.fec_info* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @clrsetbits_be32(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @iounmap(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.fec_info*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
