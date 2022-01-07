; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_nmclan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_nmclan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_2__**, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"nmclan_config\0A\00", align 1
@mace_interrupt = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@MACE_CHIPIDL = common dso_local global i32 0, align 4
@MACE_CHIPIDH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"nmclan_cs configured: mace id=%x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"mace id not found: %x %x should be 0x40 0x?9\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@if_port = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid if_port requested\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"nmclan: port %#3lx, irq %d, %s port, hw_addr %pM\0A\00", align 1
@if_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @nmclan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmclan_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32* @netdev_priv(%struct.net_device* %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 1
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 0
  store i32 5, i32* %21, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %166

27:                                               ; preds = %1
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = load i32, i32* @mace_interrupt, align 4
  %30 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %166

34:                                               ; preds = %27
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %166

40:                                               ; preds = %34
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %59 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %58, i32 128, i32** %6)
  store i64 %59, i64* %7, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @ETH_ALEN, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %40
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @kfree(i32* %67)
  br label %166

69:                                               ; preds = %62
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* @ETH_ALEN, align 8
  %75 = call i32 @memcpy(i32 %72, i32* %73, i64 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @MACE_CHIPIDL, align 4
  %81 = call signext i8 @mace_read(i32* %78, i32 %79, i32 %80)
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %81, i8* %82, align 1
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MACE_CHIPIDH, align 4
  %86 = call signext i8 @mace_read(i32* %83, i32 %84, i32 %85)
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 %86, i8* %87, align 1
  %88 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 64
  br i1 %91, label %92, label %108

92:                                               ; preds = %69
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %95, 15
  %97 = icmp eq i32 %96, 9
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %100 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  br label %118

108:                                              ; preds = %92, %69
  %109 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %171

118:                                              ; preds = %98
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mace_init(i32* %119, i32 %120, i32 %123)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %166

127:                                              ; preds = %118
  %128 = load i32, i32* @if_port, align 4
  %129 = icmp sle i32 %128, 2
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* @if_port, align 4
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %136

134:                                              ; preds = %127
  %135 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %130
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %139 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %138, i32 0, i32 1
  %140 = call i32 @SET_NETDEV_DEV(%struct.net_device* %137, i32* %139)
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = call i32 @register_netdev(%struct.net_device* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %166

147:                                              ; preds = %136
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** @if_names, align 8
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @netdev_info(%struct.net_device* %148, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %154, i32 %161, i32 %164)
  store i32 0, i32* %2, align 4
  br label %171

166:                                              ; preds = %145, %126, %66, %39, %33, %26
  %167 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %168 = call i32 @nmclan_release(%struct.pcmcia_device* %167)
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %166, %147, %108
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i32**) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local signext i8 @mace_read(i32*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @mace_init(i32*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nmclan_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
