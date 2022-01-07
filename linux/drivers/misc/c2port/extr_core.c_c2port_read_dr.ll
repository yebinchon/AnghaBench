; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_read_dr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_read_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i64 (%struct.c2port_device.0*)*, i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.2*, i32)* }
%struct.c2port_device.0 = type opaque
%struct.c2port_device.1 = type opaque
%struct.c2port_device.2 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*, i32*)* @c2port_read_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2port_read_dr(%struct.c2port_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c2port_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.c2port_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %10 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %9, i32 0, i32 0
  %11 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  store %struct.c2port_ops* %11, %struct.c2port_ops** %6, align 8
  %12 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %13 = call i32 @c2port_strobe_ck(%struct.c2port_device* %12)
  %14 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %15 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %14, i32 0, i32 1
  %16 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %15, align 8
  %17 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %18 = bitcast %struct.c2port_device* %17 to %struct.c2port_device.1*
  %19 = call i32 %16(%struct.c2port_device.1* %18, i32 0)
  %20 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %21 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %20, i32 0, i32 2
  %22 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %21, align 8
  %23 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %24 = bitcast %struct.c2port_device* %23 to %struct.c2port_device.2*
  %25 = call i32 %22(%struct.c2port_device.2* %24, i32 0)
  %26 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %27 = call i32 @c2port_strobe_ck(%struct.c2port_device* %26)
  %28 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %29 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %28, i32 0, i32 2
  %30 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %29, align 8
  %31 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %32 = bitcast %struct.c2port_device* %31 to %struct.c2port_device.2*
  %33 = call i32 %30(%struct.c2port_device.2* %32, i32 0)
  %34 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %35 = call i32 @c2port_strobe_ck(%struct.c2port_device* %34)
  %36 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %37 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %36, i32 0, i32 2
  %38 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %37, align 8
  %39 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %40 = bitcast %struct.c2port_device* %39 to %struct.c2port_device.2*
  %41 = call i32 %38(%struct.c2port_device.2* %40, i32 0)
  %42 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %43 = call i32 @c2port_strobe_ck(%struct.c2port_device* %42)
  %44 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %45 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %44, i32 0, i32 2
  %46 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %45, align 8
  %47 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %48 = bitcast %struct.c2port_device* %47 to %struct.c2port_device.2*
  %49 = call i32 %46(%struct.c2port_device.2* %48, i32 0)
  %50 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %51 = call i32 @c2port_strobe_ck(%struct.c2port_device* %50)
  %52 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %53 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %52, i32 0, i32 1
  %54 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %53, align 8
  %55 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %56 = bitcast %struct.c2port_device* %55 to %struct.c2port_device.1*
  %57 = call i32 %54(%struct.c2port_device.1* %56, i32 1)
  store i32 20, i32* %7, align 4
  br label %58

58:                                               ; preds = %71, %2
  %59 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %60 = call i32 @c2port_strobe_ck(%struct.c2port_device* %59)
  %61 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %62 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %61, i32 0, i32 0
  %63 = load i64 (%struct.c2port_device.0*)*, i64 (%struct.c2port_device.0*)** %62, align 8
  %64 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %65 = bitcast %struct.c2port_device* %64 to %struct.c2port_device.0*
  %66 = call i64 %63(%struct.c2port_device.0* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %75

69:                                               ; preds = %58
  %70 = call i32 @udelay(i32 1)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %58, label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %110

81:                                               ; preds = %75
  %82 = load i32*, i32** %5, align 8
  store i32 0, i32* %82, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %104, %81
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 8
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %91 = call i32 @c2port_strobe_ck(%struct.c2port_device* %90)
  %92 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %93 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %92, i32 0, i32 0
  %94 = load i64 (%struct.c2port_device.0*)*, i64 (%struct.c2port_device.0*)** %93, align 8
  %95 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %96 = bitcast %struct.c2port_device* %95 to %struct.c2port_device.0*
  %97 = call i64 %94(%struct.c2port_device.0* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %86
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 128
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %99, %86
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %83

107:                                              ; preds = %83
  %108 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  %109 = call i32 @c2port_strobe_ck(%struct.c2port_device* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %78
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @c2port_strobe_ck(%struct.c2port_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
