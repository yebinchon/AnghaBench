; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_config_cpu_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_config_cpu_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.ksz_device* }
%struct.ksz_device = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.ksz_port*, i32 }
%struct.ksz_port = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"use %s instead of %s\0A\00", align 1
@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*)* @ksz9477_config_cpu_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_config_cpu_port(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca %struct.ksz_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 1
  %9 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  store %struct.ksz_device* %9, %struct.ksz_device** %3, align 8
  %10 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %11 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %102, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %18 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %105

21:                                               ; preds = %15
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %21
  %27 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %28 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %101

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %37 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %39 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %43 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %45 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %48 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @ksz9477_get_interface(%struct.ksz_device* %51, i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %55 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %34
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %61 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %34
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %68 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %73 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %76 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @phy_modes(i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @phy_modes(i64 %79)
  %81 = call i32 @dev_info(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %71, %65, %62
  %83 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ksz9477_port_setup(%struct.ksz_device* %83, i32 %84, i32 1)
  %86 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %87 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %86, i32 0, i32 10
  %88 = load %struct.ksz_port*, %struct.ksz_port** %87, align 8
  %89 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %90 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %88, i64 %92
  store %struct.ksz_port* %93, %struct.ksz_port** %4, align 8
  %94 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %95 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %98 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %100 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %82, %26, %21
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %15

105:                                              ; preds = %15
  %106 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %107 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %110 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %168, %105
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %114 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %171

117:                                              ; preds = %111
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %120 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %168

124:                                              ; preds = %117
  %125 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %126 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %125, i32 0, i32 10
  %127 = load %struct.ksz_port*, %struct.ksz_port** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %127, i64 %129
  store %struct.ksz_port* %130, %struct.ksz_port** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = shl i32 1, %131
  %133 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %134 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %136 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %139 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @BR_STATE_DISABLED, align 4
  %143 = call i32 @ksz9477_port_stp_state_set(%struct.dsa_switch* %140, i32 %141, i32 %142)
  %144 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %145 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %148 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %124
  %152 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %153 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %124
  %155 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %156 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 9729792
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i32, i32* %5, align 4
  %161 = icmp eq i32 %160, 6
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %164 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %163, i32 0, i32 4
  store i32 1, i32* %164, align 4
  %165 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %166 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %165, i32 0, i32 3
  store i32 0, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %159, %154
  br label %168

168:                                              ; preds = %167, %123
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %111

171:                                              ; preds = %111
  ret void
}

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @ksz9477_get_interface(%struct.ksz_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @phy_modes(i64) #1

declare dso_local i32 @ksz9477_port_setup(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz9477_port_stp_state_set(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
