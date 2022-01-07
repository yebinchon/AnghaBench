; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_state = type { %struct.adv7842_platform_data }
%struct.adv7842_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7842_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_core_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.adv7842_state*, align 8
  %4 = alloca %struct.adv7842_platform_data*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.adv7842_state* %6, %struct.adv7842_state** %3, align 8
  %7 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %8 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %7, i32 0, i32 0
  store %struct.adv7842_platform_data* %8, %struct.adv7842_platform_data** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %10, i32 0, i32 22
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 128, i32 0
  %16 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %16, i32 0, i32 21
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 64, i32 0
  %22 = or i32 %15, %21
  %23 = call i32 @hdmi_write(%struct.v4l2_subdev* %9, i32 72, i32 %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %25 = call i32 @disable_input(%struct.v4l2_subdev* %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %27 = call i32 @rep_write_and_or(%struct.v4l2_subdev* %26, i32 119, i32 211, i32 32)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %29 = call i32 @io_write(%struct.v4l2_subdev* %28, i32 12, i32 66)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %31 = call i32 @io_write(%struct.v4l2_subdev* %30, i32 21, i32 128)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %33 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 3
  %37 = or i32 240, %36
  %38 = call i32 @io_write(%struct.v4l2_subdev* %32, i32 2, i32 %37)
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %40 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %41 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 3
  %44 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %45 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 2
  %48 = or i32 %43, %47
  %49 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = or i32 %48, %52
  %54 = call i32 @io_write_and_or(%struct.v4l2_subdev* %39, i32 5, i32 240, i32 %53)
  %55 = load %struct.adv7842_state*, %struct.adv7842_state** %3, align 8
  %56 = call i32 @adv7842_setup_format(%struct.adv7842_state* %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = call i32 @hdmi_write_and_or(%struct.v4l2_subdev* %57, i32 26, i32 241, i32 8)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %60 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 4
  %64 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %65 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 2
  %68 = or i32 %63, %67
  %69 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %70 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %68, %71
  %73 = call i32 @io_write_and_or(%struct.v4l2_subdev* %59, i32 20, i32 192, i32 %72)
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %75 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %76 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %79 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 1
  %82 = or i32 %77, %81
  %83 = call i32 @cp_write_and_or(%struct.v4l2_subdev* %74, i32 186, i32 252, i32 %82)
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %85 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %86 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %89 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 1
  %92 = or i32 %87, %91
  %93 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %94 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 2
  %97 = or i32 %92, %96
  %98 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %99 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 3
  %102 = or i32 %97, %101
  %103 = call i32 @sdp_write_and_or(%struct.v4l2_subdev* %84, i32 221, i32 240, i32 %102)
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %105 = call i32 @cp_write(%struct.v4l2_subdev* %104, i32 105, i32 20)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %107 = call i32 @io_write(%struct.v4l2_subdev* %106, i32 6, i32 166)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %109 = call i32 @cp_write(%struct.v4l2_subdev* %108, i32 243, i32 220)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %111 = call i32 @afe_write(%struct.v4l2_subdev* %110, i32 181, i32 1)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %113 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %114 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @afe_write(%struct.v4l2_subdev* %112, i32 2, i32 %115)
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %118 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %119 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 4
  %122 = call i32 @io_write_and_or(%struct.v4l2_subdev* %117, i32 48, i32 -17, i32 %121)
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %124 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %125 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %124, i32 0, i32 20
  %126 = call i32 @sdp_csc_coeff(%struct.v4l2_subdev* %123, i32* %125)
  %127 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %128 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %127, i32 0, i32 15
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %129, 128
  br i1 %130, label %131, label %165

131:                                              ; preds = %1
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %133 = call i32 @sdp_write(%struct.v4l2_subdev* %132, i32 18, i32 13)
  %134 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %135 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %134, i32 0, i32 19
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %131
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %140 = call i32 @sdp_io_write(%struct.v4l2_subdev* %139, i32 111, i32 0)
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %142 = call i32 @sdp_io_write(%struct.v4l2_subdev* %141, i32 117, i32 10)
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %144 = call i32 @sdp_io_write(%struct.v4l2_subdev* %143, i32 122, i32 165)
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %146 = call i32 @sdp_io_write(%struct.v4l2_subdev* %145, i32 123, i32 143)
  %147 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %148 = call i32 @sdp_io_write(%struct.v4l2_subdev* %147, i32 96, i32 1)
  br label %164

149:                                              ; preds = %131
  %150 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %151 = call i32 @sdp_io_write(%struct.v4l2_subdev* %150, i32 117, i32 10)
  %152 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %153 = call i32 @sdp_io_write(%struct.v4l2_subdev* %152, i32 116, i32 0)
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %155 = call i32 @sdp_io_write(%struct.v4l2_subdev* %154, i32 121, i32 51)
  %156 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %157 = call i32 @sdp_io_write(%struct.v4l2_subdev* %156, i32 111, i32 1)
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %159 = call i32 @sdp_io_write(%struct.v4l2_subdev* %158, i32 122, i32 165)
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %161 = call i32 @sdp_io_write(%struct.v4l2_subdev* %160, i32 123, i32 143)
  %162 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %163 = call i32 @sdp_io_write(%struct.v4l2_subdev* %162, i32 96, i32 1)
  br label %164

164:                                              ; preds = %149, %138
  br label %168

165:                                              ; preds = %1
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %167 = call i32 @sdp_io_write(%struct.v4l2_subdev* %166, i32 41, i32 16)
  br label %168

168:                                              ; preds = %165, %164
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %170 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %171 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %170, i32 0, i32 18
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @select_input(%struct.v4l2_subdev* %169, i32 %172)
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %175 = call i32 @enable_input(%struct.v4l2_subdev* %174)
  %176 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %177 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %176, i32 0, i32 17
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %182 = call i32 @hdmi_write(%struct.v4l2_subdev* %181, i32 105, i32 92)
  br label %188

183:                                              ; preds = %168
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %185 = call i32 @hdmi_write(%struct.v4l2_subdev* %184, i32 105, i32 163)
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %187 = call i32 @io_write_and_or(%struct.v4l2_subdev* %186, i32 32, i32 207, i32 0)
  br label %188

188:                                              ; preds = %183, %180
  %189 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %190 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %191 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %190, i32 0, i32 16
  %192 = load i32, i32* %191, align 8
  %193 = or i32 128, %192
  %194 = call i32 @io_write(%struct.v4l2_subdev* %189, i32 25, i32 %193)
  %195 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %196 = call i32 @io_write(%struct.v4l2_subdev* %195, i32 51, i32 64)
  %197 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %198 = call i32 @io_write(%struct.v4l2_subdev* %197, i32 64, i32 242)
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %200 = call i32 @adv7842_irq_enable(%struct.v4l2_subdev* %199, i32 1)
  %201 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %202 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @v4l2_ctrl_handler_setup(i32 %203)
  ret i32 %204
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @hdmi_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @disable_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @rep_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @io_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @adv7842_setup_format(%struct.adv7842_state*) #1

declare dso_local i32 @hdmi_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @cp_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @sdp_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @cp_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @afe_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @sdp_csc_coeff(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @sdp_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @sdp_io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @select_input(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @enable_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7842_irq_enable(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
