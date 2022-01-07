; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, %struct.TYPE_2__**, %struct.com20020_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.com20020_dev = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.arcnet_local = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"config...\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"com20020_config\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"baseport1 is %Xh\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"requestIO failed totally!\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"got ioaddr %Xh\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"request IRQ %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"requestIRQ failed totally!\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"PCMCIA COM20020\00", align 1
@ARC_CAN_10MBIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"com20020_found() failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"port %#3lx, irq %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"com20020_config failed...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @com20020_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com20020_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.arcnet_local*, align 8
  %5 = alloca %struct.com20020_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 4
  %12 = load %struct.com20020_dev*, %struct.com20020_dev** %11, align 8
  store %struct.com20020_dev* %12, %struct.com20020_dev** %5, align 8
  %13 = load %struct.com20020_dev*, %struct.com20020_dev** %5, align 8
  %14 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 1
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 1
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 1
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 0
  store i32 16, i32* %35, align 8
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %1
  store i32 256, i32* %9, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 1024
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 4
  %56 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %57 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %65

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 16
  store i32 %64, i32* %9, align 4
  br label %45

65:                                               ; preds = %60, %45
  br label %69

66:                                               ; preds = %1
  %67 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %68 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 1
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %151

76:                                               ; preds = %69
  %77 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %78 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  store i32 %83, i32* %9, align 4
  %86 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %87 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %86, i32 0, i32 1
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %91 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %90, i32 0, i32 1
  %92 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %93 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %76
  %101 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %102 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %101, i32 0, i32 1
  %103 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %151

104:                                              ; preds = %76
  %105 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %106 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %111 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %151

115:                                              ; preds = %104
  %116 = load %struct.net_device*, %struct.net_device** %6, align 8
  %117 = call i64 @com20020_check(%struct.net_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = call i32 @regdump(%struct.net_device* %120)
  br label %151

122:                                              ; preds = %115
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %123)
  store %struct.arcnet_local* %124, %struct.arcnet_local** %4, align 8
  %125 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %126 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %126, align 8
  %127 = load i32, i32* @ARC_CAN_10MBIT, align 4
  %128 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %129 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %132 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %131, i32 0, i32 1
  %133 = call i32 @SET_NETDEV_DEV(%struct.net_device* %130, i32* %132)
  %134 = load %struct.net_device*, %struct.net_device** %6, align 8
  %135 = call i32 @com20020_found(%struct.net_device* %134, i32 0)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %122
  %139 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %140 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %139, i32 0, i32 1
  %141 = call i32 @dev_notice(i32* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %151

142:                                              ; preds = %122
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.net_device*, %struct.net_device** %6, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @netdev_dbg(%struct.net_device* %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %146, i32 %149)
  store i32 0, i32* %2, align 4
  br label %159

151:                                              ; preds = %138, %119, %114, %100, %72
  %152 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %153 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %152, i32 0, i32 1
  %154 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %155 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %156 = call i32 @com20020_release(%struct.pcmcia_device* %155)
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %151, %142
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i64 @com20020_check(%struct.net_device*) #1

declare dso_local i32 @regdump(%struct.net_device*) #1

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @com20020_found(%struct.net_device*, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @com20020_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
