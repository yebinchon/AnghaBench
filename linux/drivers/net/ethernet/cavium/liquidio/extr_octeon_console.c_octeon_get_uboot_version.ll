; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_get_uboot_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_get_uboot_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__*, %struct.octeon_console* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_console = type { i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"setenv stdout pci\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"version\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error reading console %u, ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%u: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"U-Boot\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"setenv stdout serial\0A\00", align 1
@OCTEON_UBOOT_VER_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @octeon_get_uboot_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_get_uboot_version(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_console*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 512, i32 %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %141

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = call i64 @octeon_console_send_cmd(%struct.octeon_device* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 50)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @kfree(i8* %21)
  br label %141

23:                                               ; preds = %16
  %24 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %25 = call i64 @octeon_console_send_cmd(%struct.octeon_device* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @kfree(i8* %28)
  br label %141

30:                                               ; preds = %23
  %31 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 1
  %33 = load %struct.octeon_console*, %struct.octeon_console** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %33, i64 %34
  store %struct.octeon_console* %35, %struct.octeon_console** %6, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %86, %30
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 511, %43
  %45 = call i32 @octeon_console_read(%struct.octeon_device* %37, i64 %38, i8* %42, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %36
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.octeon_console*, %struct.octeon_console** %6, align 8
  %57 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @octeon_console_handle_result(%struct.octeon_device* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %48
  br label %77

65:                                               ; preds = %36
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %65
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %3, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 16
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ false, %80 ], [ %85, %83 ]
  br i1 %87, label %36, label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %88
  %92 = load %struct.octeon_console*, %struct.octeon_console** %6, align 8
  %93 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %91
  %100 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.octeon_console*, %struct.octeon_console** %6, align 8
  %106 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %104, i8* %107)
  %109 = load %struct.octeon_console*, %struct.octeon_console** %6, align 8
  %110 = getelementptr inbounds %struct.octeon_console, %struct.octeon_console* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %99, %91, %88
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 511
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %9, align 8
  %117 = call i8* @strstr(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %113
  %121 = load i8*, i8** %8, align 8
  %122 = call i8* @strstr(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %122, i8** %10, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 -1
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  store i8 0, i8* %128, align 1
  %129 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %130 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %125, %120
  br label %136

136:                                              ; preds = %135, %113
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @kfree(i8* %137)
  %139 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %140 = call i64 @octeon_console_send_cmd(%struct.octeon_device* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 50)
  br label %141

141:                                              ; preds = %136, %27, %20, %15
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @octeon_console_send_cmd(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @octeon_console_read(%struct.octeon_device*, i64, i8*, i32) #1

declare dso_local i32 @octeon_console_handle_result(%struct.octeon_device*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
