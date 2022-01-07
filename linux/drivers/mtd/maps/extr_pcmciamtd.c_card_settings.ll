; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_card_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_card_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmciamtd_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.pcmcia_device = type { i8** }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Found name: %s\0A\00", align 1
@CISTPL_FORMAT = common dso_local global i32 0, align 4
@pcmciamtd_cistpl_format = common dso_local global i32 0, align 4
@CISTPL_JEDEC_C = common dso_local global i32 0, align 4
@pcmciamtd_cistpl_jedec = common dso_local global i32 0, align 4
@CISTPL_DEVICE = common dso_local global i32 0, align 4
@pcmciamtd_cistpl_device = common dso_local global i32 0, align 4
@CISTPL_DEVICE_GEO = common dso_local global i32 0, align 4
@pcmciamtd_cistpl_geo = common dso_local global i32 0, align 4
@MAX_PCMCIA_ADDR = common dso_local global i32 0, align 4
@force_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"size forced to %dM\0A\00", align 1
@bankwidth = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"bankwidth forced to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"PCMCIA Memory card\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Device: Size: %lu Width:%d Name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmciamtd_dev*, %struct.pcmcia_device*, i32*)* @card_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @card_settings(%struct.pcmciamtd_dev* %0, %struct.pcmcia_device* %1, i32* %2) #0 {
  %4 = alloca %struct.pcmciamtd_dev*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pcmciamtd_dev* %0, %struct.pcmciamtd_dev** %4, align 8
  store %struct.pcmcia_device* %1, %struct.pcmcia_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %3
  %15 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %52, %14
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcat(i8* %42, i8* %49)
  br label %51

51:                                               ; preds = %39, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %3
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %62 = load i32, i32* @CISTPL_FORMAT, align 4
  %63 = load i32, i32* @pcmciamtd_cistpl_format, align 4
  %64 = call i32 @pcmcia_loop_tuple(%struct.pcmcia_device* %61, i32 %62, i32 %63, %struct.pcmciamtd_dev* null)
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %66 = load i32, i32* @CISTPL_JEDEC_C, align 4
  %67 = load i32, i32* @pcmciamtd_cistpl_jedec, align 4
  %68 = call i32 @pcmcia_loop_tuple(%struct.pcmcia_device* %65, i32 %66, i32 %67, %struct.pcmciamtd_dev* null)
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %70 = load i32, i32* @CISTPL_DEVICE, align 4
  %71 = load i32, i32* @pcmciamtd_cistpl_device, align 4
  %72 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %73 = call i32 @pcmcia_loop_tuple(%struct.pcmcia_device* %69, i32 %70, i32 %71, %struct.pcmciamtd_dev* %72)
  %74 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %75 = load i32, i32* @CISTPL_DEVICE_GEO, align 4
  %76 = load i32, i32* @pcmciamtd_cistpl_geo, align 4
  %77 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %78 = call i32 @pcmcia_loop_tuple(%struct.pcmcia_device* %74, i32 %75, i32 %76, %struct.pcmciamtd_dev* %77)
  %79 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %60
  %85 = load i32, i32* @MAX_PCMCIA_ADDR, align 4
  %86 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %60
  %90 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 2, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i32, i32* @force_size, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* @force_size, align 4
  %104 = shl i32 %103, 20
  %105 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @force_size, align 4
  %109 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %102, %99
  %111 = load i32, i32* @bankwidth, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @bankwidth, align 4
  %115 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @bankwidth, align 4
  %119 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %113, %110
  %121 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  store i8* %123, i8** %126, align 8
  %127 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %120
  %134 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strcpy(i8* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32*, i32** %6, align 8
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %120
  %140 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 3
  %149 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %148, i8* %151)
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pcmcia_loop_tuple(%struct.pcmcia_device*, i32, i32, %struct.pcmciamtd_dev*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
