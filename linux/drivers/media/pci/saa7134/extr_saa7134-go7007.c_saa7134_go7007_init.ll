; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.saa7134_dev = type { i64, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.go7007 = type { i32*, i32*, i32, i32, i32, %struct.TYPE_4__*, %struct.v4l2_subdev, %struct.saa7134_dev*, %struct.go7007*, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.saa7134_go7007 = type { i32*, i32*, i32, i32, i32, %struct.TYPE_4__*, %struct.v4l2_subdev, %struct.saa7134_dev*, %struct.saa7134_go7007*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"saa7134-go7007: probing new SAA713X board\0A\00", align 1
@board_voyager = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GO7007_BOARDID_PCI_VOYAGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@saa7134_boards = common dso_local global %struct.TYPE_5__* null, align 8
@saa7134_go7007_hpi_ops = common dso_local global i32 0, align 4
@saa7134_go7007_sd_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"saa7134-go7007\00", align 1
@GO7007_BOARD_USE_ONBOARD_I2C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"saa7134-go7007: register subdev failed\0A\00", align 1
@STATUS_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_go7007_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_init(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca %struct.saa7134_go7007*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %9 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call %struct.saa7134_go7007* @go7007_alloc(i32* @board_voyager, i32* %11)
  %13 = bitcast %struct.saa7134_go7007* %12 to %struct.go7007*
  store %struct.go7007* %13, %struct.go7007** %4, align 8
  %14 = load %struct.go7007*, %struct.go7007** %4, align 8
  %15 = icmp eq %struct.go7007* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %164

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.saa7134_go7007* @kzalloc(i32 88, i32 %20)
  store %struct.saa7134_go7007* %21, %struct.saa7134_go7007** %5, align 8
  %22 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %23 = icmp eq %struct.saa7134_go7007* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.go7007*, %struct.go7007** %4, align 8
  %26 = bitcast %struct.go7007* %25 to %struct.saa7134_go7007*
  %27 = call i32 @kfree(%struct.saa7134_go7007* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %164

30:                                               ; preds = %19
  %31 = load i32, i32* @GO7007_BOARDID_PCI_VOYAGER, align 4
  %32 = load %struct.go7007*, %struct.go7007** %4, align 8
  %33 = getelementptr inbounds %struct.go7007, %struct.go7007* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = load %struct.go7007*, %struct.go7007** %4, align 8
  %35 = getelementptr inbounds %struct.go7007, %struct.go7007* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i8* @pci_name(%struct.TYPE_6__* %39)
  %41 = call i32 @snprintf(i32 %36, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load %struct.go7007*, %struct.go7007** %4, align 8
  %43 = getelementptr inbounds %struct.go7007, %struct.go7007* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @saa7134_boards, align 8
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strscpy(i32 %44, i8* %51, i32 4)
  %53 = load %struct.go7007*, %struct.go7007** %4, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 9
  store i32* @saa7134_go7007_hpi_ops, i32** %54, align 8
  %55 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %56 = bitcast %struct.saa7134_go7007* %55 to %struct.go7007*
  %57 = load %struct.go7007*, %struct.go7007** %4, align 8
  %58 = getelementptr inbounds %struct.go7007, %struct.go7007* %57, i32 0, i32 8
  store %struct.go7007* %56, %struct.go7007** %58, align 8
  %59 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %60 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %61 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %60, i32 0, i32 7
  store %struct.saa7134_dev* %59, %struct.saa7134_dev** %61, align 8
  %62 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %63 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %62, i32 0, i32 6
  store %struct.v4l2_subdev* %63, %struct.v4l2_subdev** %6, align 8
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %65 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %64, i32* @saa7134_go7007_sd_ops)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %67 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %68 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %66, %struct.saa7134_go7007* %67)
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strscpy(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i64 @get_zeroed_page(i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %77 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %79 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %30
  br label %134

83:                                               ; preds = %30
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i64 @get_zeroed_page(i32 %84)
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %88 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %90 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %134

94:                                               ; preds = %83
  %95 = load %struct.go7007*, %struct.go7007** %4, align 8
  %96 = bitcast %struct.go7007* %95 to %struct.saa7134_go7007*
  %97 = load %struct.go7007*, %struct.go7007** %4, align 8
  %98 = getelementptr inbounds %struct.go7007, %struct.go7007* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GO7007_BOARD_USE_ONBOARD_I2C, align 4
  %103 = and i32 %101, %102
  %104 = call i64 @go7007_boot_encoder(%struct.saa7134_go7007* %96, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %134

107:                                              ; preds = %94
  %108 = load %struct.go7007*, %struct.go7007** %4, align 8
  %109 = bitcast %struct.go7007* %108 to %struct.saa7134_go7007*
  %110 = load %struct.go7007*, %struct.go7007** %4, align 8
  %111 = getelementptr inbounds %struct.go7007, %struct.go7007* %110, i32 0, i32 5
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @go7007_register_encoder(%struct.saa7134_go7007* %109, i32 %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %134

118:                                              ; preds = %107
  %119 = load %struct.go7007*, %struct.go7007** %4, align 8
  %120 = getelementptr inbounds %struct.go7007, %struct.go7007* %119, i32 0, i32 4
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %122 = call i64 @v4l2_device_register_subdev(i32* %120, %struct.v4l2_subdev* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %118
  %127 = load %struct.go7007*, %struct.go7007** %4, align 8
  %128 = getelementptr inbounds %struct.go7007, %struct.go7007* %127, i32 0, i32 3
  %129 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %130 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load i32, i32* @STATUS_ONLINE, align 4
  %132 = load %struct.go7007*, %struct.go7007** %4, align 8
  %133 = getelementptr inbounds %struct.go7007, %struct.go7007* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  store i32 0, i32* %2, align 4
  br label %164

134:                                              ; preds = %117, %106, %93, %82
  %135 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %136 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %141 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = ptrtoint i32* %142 to i64
  %144 = call i32 @free_page(i64 %143)
  br label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %147 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %152 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = ptrtoint i32* %153 to i64
  %155 = call i32 @free_page(i64 %154)
  br label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %158 = call i32 @kfree(%struct.saa7134_go7007* %157)
  %159 = load %struct.go7007*, %struct.go7007** %4, align 8
  %160 = bitcast %struct.go7007* %159 to %struct.saa7134_go7007*
  %161 = call i32 @kfree(%struct.saa7134_go7007* %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %156, %126, %24, %16
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.saa7134_go7007* @go7007_alloc(i32*, i32*) #1

declare dso_local %struct.saa7134_go7007* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.saa7134_go7007*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_6__*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.saa7134_go7007*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @go7007_boot_encoder(%struct.saa7134_go7007*, i32) #1

declare dso_local i64 @go7007_register_encoder(%struct.saa7134_go7007*, i32) #1

declare dso_local i64 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
