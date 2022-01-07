; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_state = type { i64, i64, %struct.adv76xx_platform_data, %struct.adv76xx_chip_info* }
%struct.adv76xx_platform_data = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.adv76xx_chip_info = type { i32, i32, i32 (%struct.v4l2_subdev*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv76xx_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_core_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.adv76xx_state*, align 8
  %4 = alloca %struct.adv76xx_chip_info*, align 8
  %5 = alloca %struct.adv76xx_platform_data*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.adv76xx_state* %7, %struct.adv76xx_state** %3, align 8
  %8 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %9 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %8, i32 0, i32 3
  %10 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %9, align 8
  store %struct.adv76xx_chip_info* %10, %struct.adv76xx_chip_info** %4, align 8
  %11 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %12 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %11, i32 0, i32 2
  store %struct.adv76xx_platform_data* %12, %struct.adv76xx_platform_data** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %14 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %14, i32 0, i32 16
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 128, i32 0
  %20 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %20, i32 0, i32 15
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 64, i32 0
  %26 = or i32 %19, %25
  %27 = call i32 @hdmi_write(%struct.v4l2_subdev* %13, i32 72, i32 %26)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %29 = call i32 @disable_input(%struct.v4l2_subdev* %28)
  %30 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %1
  %35 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %39 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %44 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %47 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %49 = call i32 @select_input(%struct.v4l2_subdev* %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %51 = call i32 @enable_input(%struct.v4l2_subdev* %50)
  br label %52

52:                                               ; preds = %42, %34, %1
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %54 = call i32 @io_write(%struct.v4l2_subdev* %53, i32 12, i32 66)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %56 = call i32 @io_write(%struct.v4l2_subdev* %55, i32 11, i32 68)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = call i32 @cp_write(%struct.v4l2_subdev* %57, i32 207, i32 1)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %60 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %61 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 3
  %64 = call i32 @io_write_clr_set(%struct.v4l2_subdev* %59, i32 2, i32 15, i32 %63)
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %66 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 3
  %70 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %71 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 2
  %74 = or i32 %69, %73
  %75 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %76 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 1
  %79 = or i32 %74, %78
  %80 = call i32 @io_write_clr_set(%struct.v4l2_subdev* %65, i32 5, i32 14, i32 %79)
  %81 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %82 = call i32 @adv76xx_setup_format(%struct.adv76xx_state* %81)
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %84 = call i32 @cp_write(%struct.v4l2_subdev* %83, i32 105, i32 48)
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %86 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %87 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 2
  %90 = or i32 160, %89
  %91 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %92 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 1
  %95 = or i32 %90, %94
  %96 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %95, %98
  %100 = call i32 @io_write(%struct.v4l2_subdev* %85, i32 6, i32 %99)
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %102 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %103 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 64, %105
  %107 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %108 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 2
  %111 = or i32 %106, %110
  %112 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %113 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %111, %114
  %116 = call i32 @io_write(%struct.v4l2_subdev* %101, i32 20, i32 %115)
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %118 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %119 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 1
  %122 = or i32 %121, 1
  %123 = call i32 @cp_write(%struct.v4l2_subdev* %117, i32 186, i32 %122)
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %125 = call i32 @cp_write(%struct.v4l2_subdev* %124, i32 243, i32 220)
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %127 = call i32 @cp_write(%struct.v4l2_subdev* %126, i32 249, i32 35)
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %129 = call i32 @cp_write(%struct.v4l2_subdev* %128, i32 69, i32 35)
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %131 = call i32 @cp_write(%struct.v4l2_subdev* %130, i32 201, i32 45)
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %133 = call i32 @hdmi_write_clr_set(%struct.v4l2_subdev* %132, i32 21, i32 3, i32 3)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %135 = call i32 @hdmi_write_clr_set(%struct.v4l2_subdev* %134, i32 26, i32 14, i32 8)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %137 = call i32 @hdmi_write_clr_set(%struct.v4l2_subdev* %136, i32 104, i32 6, i32 6)
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %139 = call i32 @afe_write(%struct.v4l2_subdev* %138, i32 181, i32 1)
  %140 = load %struct.adv76xx_state*, %struct.adv76xx_state** %3, align 8
  %141 = call i64 @adv76xx_has_afe(%struct.adv76xx_state* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %52
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %145 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %146 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @afe_write(%struct.v4l2_subdev* %144, i32 2, i32 %147)
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %150 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %151 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 %152, 4
  %154 = call i32 @io_write_clr_set(%struct.v4l2_subdev* %149, i32 48, i32 16, i32 %153)
  br label %155

155:                                              ; preds = %143, %52
  %156 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %157 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %5, align 8
  %158 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = or i32 192, %159
  %161 = call i32 @io_write(%struct.v4l2_subdev* %156, i32 64, i32 %160)
  %162 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %163 = call i32 @io_write(%struct.v4l2_subdev* %162, i32 70, i32 152)
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %165 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %4, align 8
  %166 = getelementptr inbounds %struct.adv76xx_chip_info, %struct.adv76xx_chip_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @io_write(%struct.v4l2_subdev* %164, i32 110, i32 %167)
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %170 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %4, align 8
  %171 = getelementptr inbounds %struct.adv76xx_chip_info, %struct.adv76xx_chip_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @io_write(%struct.v4l2_subdev* %169, i32 115, i32 %172)
  %174 = load %struct.adv76xx_chip_info*, %struct.adv76xx_chip_info** %4, align 8
  %175 = getelementptr inbounds %struct.adv76xx_chip_info, %struct.adv76xx_chip_info* %174, i32 0, i32 2
  %176 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %175, align 8
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %178 = call i32 %176(%struct.v4l2_subdev* %177)
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %180 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @v4l2_ctrl_handler_setup(i32 %181)
  ret i32 %182
}

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @hdmi_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @disable_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @select_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @enable_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @cp_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @io_write_clr_set(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @adv76xx_setup_format(%struct.adv76xx_state*) #1

declare dso_local i32 @hdmi_write_clr_set(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @afe_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i64 @adv76xx_has_afe(%struct.adv76xx_state*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
