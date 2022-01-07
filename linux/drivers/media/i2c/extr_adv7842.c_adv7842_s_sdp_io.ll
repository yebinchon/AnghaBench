; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_s_sdp_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_s_sdp_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_sdp_io_sync_adjustment = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.adv7842_sdp_io_sync_adjustment*)* @adv7842_s_sdp_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7842_s_sdp_io(%struct.v4l2_subdev* %0, %struct.adv7842_sdp_io_sync_adjustment* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7842_sdp_io_sync_adjustment*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.adv7842_sdp_io_sync_adjustment* %1, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %5 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %6 = icmp ne %struct.adv7842_sdp_io_sync_adjustment* %5, null
  br i1 %6, label %7, label %105

7:                                                ; preds = %2
  %8 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %9 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %8, i32 0, i32 12
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %105

12:                                               ; preds = %7
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %15 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 15
  %19 = call i32 @sdp_io_write(%struct.v4l2_subdev* %13, i32 148, i32 %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %22 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  %25 = call i32 @sdp_io_write(%struct.v4l2_subdev* %20, i32 149, i32 %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %28 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 15
  %32 = call i32 @sdp_io_write(%struct.v4l2_subdev* %26, i32 150, i32 %31)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %35 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @sdp_io_write(%struct.v4l2_subdev* %33, i32 151, i32 %37)
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %40 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %41 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 15
  %45 = call i32 @sdp_io_write(%struct.v4l2_subdev* %39, i32 152, i32 %44)
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %47 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %48 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 255
  %51 = call i32 @sdp_io_write(%struct.v4l2_subdev* %46, i32 153, i32 %50)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %54 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 15
  %58 = call i32 @sdp_io_write(%struct.v4l2_subdev* %52, i32 154, i32 %57)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %61 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  %64 = call i32 @sdp_io_write(%struct.v4l2_subdev* %59, i32 155, i32 %63)
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %66 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %67 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sdp_io_write(%struct.v4l2_subdev* %65, i32 168, i32 %68)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %71 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %72 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sdp_io_write(%struct.v4l2_subdev* %70, i32 169, i32 %73)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %76 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %77 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sdp_io_write(%struct.v4l2_subdev* %75, i32 170, i32 %78)
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %81 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %82 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sdp_io_write(%struct.v4l2_subdev* %80, i32 171, i32 %83)
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %86 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %87 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sdp_io_write(%struct.v4l2_subdev* %85, i32 172, i32 %88)
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %91 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %92 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sdp_io_write(%struct.v4l2_subdev* %90, i32 173, i32 %93)
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %96 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %97 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @sdp_io_write(%struct.v4l2_subdev* %95, i32 174, i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %101 = load %struct.adv7842_sdp_io_sync_adjustment*, %struct.adv7842_sdp_io_sync_adjustment** %4, align 8
  %102 = getelementptr inbounds %struct.adv7842_sdp_io_sync_adjustment, %struct.adv7842_sdp_io_sync_adjustment* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @sdp_io_write(%struct.v4l2_subdev* %100, i32 175, i32 %103)
  br label %138

105:                                              ; preds = %7, %2
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %107 = call i32 @sdp_io_write(%struct.v4l2_subdev* %106, i32 148, i32 0)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %109 = call i32 @sdp_io_write(%struct.v4l2_subdev* %108, i32 149, i32 0)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %111 = call i32 @sdp_io_write(%struct.v4l2_subdev* %110, i32 150, i32 0)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %113 = call i32 @sdp_io_write(%struct.v4l2_subdev* %112, i32 151, i32 32)
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %115 = call i32 @sdp_io_write(%struct.v4l2_subdev* %114, i32 152, i32 0)
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %117 = call i32 @sdp_io_write(%struct.v4l2_subdev* %116, i32 153, i32 0)
  %118 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %119 = call i32 @sdp_io_write(%struct.v4l2_subdev* %118, i32 154, i32 0)
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %121 = call i32 @sdp_io_write(%struct.v4l2_subdev* %120, i32 155, i32 0)
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %123 = call i32 @sdp_io_write(%struct.v4l2_subdev* %122, i32 168, i32 4)
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %125 = call i32 @sdp_io_write(%struct.v4l2_subdev* %124, i32 169, i32 4)
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %127 = call i32 @sdp_io_write(%struct.v4l2_subdev* %126, i32 170, i32 4)
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %129 = call i32 @sdp_io_write(%struct.v4l2_subdev* %128, i32 171, i32 4)
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %131 = call i32 @sdp_io_write(%struct.v4l2_subdev* %130, i32 172, i32 4)
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %133 = call i32 @sdp_io_write(%struct.v4l2_subdev* %132, i32 173, i32 4)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %135 = call i32 @sdp_io_write(%struct.v4l2_subdev* %134, i32 174, i32 4)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %137 = call i32 @sdp_io_write(%struct.v4l2_subdev* %136, i32 175, i32 4)
  br label %138

138:                                              ; preds = %105, %12
  ret void
}

declare dso_local i32 @sdp_io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
