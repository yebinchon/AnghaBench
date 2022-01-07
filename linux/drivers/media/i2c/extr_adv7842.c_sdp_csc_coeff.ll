; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_sdp_csc_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_sdp_csc_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_sdp_csc_coeff = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.adv7842_sdp_csc_coeff*)* @sdp_csc_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_csc_coeff(%struct.v4l2_subdev* %0, %struct.adv7842_sdp_csc_coeff* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7842_sdp_csc_coeff*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.adv7842_sdp_csc_coeff* %1, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %7 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %6, i32 0, i32 13
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 64
  %12 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %5, i32 224, i32 191, i32 %11)
  %13 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %14 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %13, i32 0, i32 13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %159

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %21 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 128, i32 0
  %26 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %19, i32 224, i32 127, i32 %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %29 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  %32 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %27, i32 224, i32 224, i32 %31)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %35 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sdp_io_write(%struct.v4l2_subdev* %33, i32 225, i32 %36)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %40 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 8
  %43 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %38, i32 226, i32 224, i32 %42)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %46 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sdp_io_write(%struct.v4l2_subdev* %44, i32 227, i32 %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %51 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %49, i32 228, i32 224, i32 %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %56 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %57 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sdp_io_write(%struct.v4l2_subdev* %55, i32 229, i32 %58)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %62 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 8
  %65 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %60, i32 230, i32 128, i32 %64)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %67 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %68 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sdp_io_write(%struct.v4l2_subdev* %66, i32 231, i32 %69)
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %72 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %73 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %71, i32 232, i32 224, i32 %75)
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %78 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %79 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sdp_io_write(%struct.v4l2_subdev* %77, i32 233, i32 %80)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %83 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %84 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 8
  %87 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %82, i32 234, i32 224, i32 %86)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %90 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sdp_io_write(%struct.v4l2_subdev* %88, i32 235, i32 %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %95 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 8
  %98 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %93, i32 236, i32 224, i32 %97)
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %100 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %101 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @sdp_io_write(%struct.v4l2_subdev* %99, i32 237, i32 %102)
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %105 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %106 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %107, 8
  %109 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %104, i32 238, i32 128, i32 %108)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %111 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %112 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @sdp_io_write(%struct.v4l2_subdev* %110, i32 239, i32 %113)
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %116 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %117 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 8
  %120 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %115, i32 240, i32 224, i32 %119)
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %122 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %123 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @sdp_io_write(%struct.v4l2_subdev* %121, i32 241, i32 %124)
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %127 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %128 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = ashr i32 %129, 8
  %131 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %126, i32 242, i32 224, i32 %130)
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %133 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %134 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @sdp_io_write(%struct.v4l2_subdev* %132, i32 243, i32 %135)
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %138 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %139 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 8
  %142 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %137, i32 244, i32 224, i32 %141)
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %144 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %145 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @sdp_io_write(%struct.v4l2_subdev* %143, i32 245, i32 %146)
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %149 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %150 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, 8
  %153 = call i32 @sdp_io_write_and_or(%struct.v4l2_subdev* %148, i32 246, i32 128, i32 %152)
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %155 = load %struct.adv7842_sdp_csc_coeff*, %struct.adv7842_sdp_csc_coeff** %4, align 8
  %156 = getelementptr inbounds %struct.adv7842_sdp_csc_coeff, %struct.adv7842_sdp_csc_coeff* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @sdp_io_write(%struct.v4l2_subdev* %154, i32 247, i32 %157)
  br label %159

159:                                              ; preds = %18, %17
  ret void
}

declare dso_local i32 @sdp_io_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @sdp_io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
