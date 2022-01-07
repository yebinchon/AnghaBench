; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c___c2port_read_flash_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c___c2port_read_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i64, i64 }

@C2PORT_FPDAT = common dso_local global i32 0, align 4
@C2PORT_BLOCK_READ = common dso_local global i64 0, align 8
@C2PORT_COMMAND_OK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.c2port_device*, i8*, i64, i64)* @__c2port_read_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__c2port_read_flash_data(%struct.c2port_device* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.c2port_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.c2port_ops*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %16 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %15, i32 0, i32 0
  %17 = load %struct.c2port_ops*, %struct.c2port_ops** %16, align 8
  store %struct.c2port_ops* %17, %struct.c2port_ops** %10, align 8
  store i64 128, i64* %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %20 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %23 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %21, %24
  %26 = icmp uge i64 %18, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %188

28:                                               ; preds = %4
  %29 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %30 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %33 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %31, %34
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %42 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %45 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %40, %28
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %5, align 8
  br label %188

61:                                               ; preds = %56
  %62 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %63 = load i32, i32* @C2PORT_FPDAT, align 4
  %64 = call i32 @c2port_write_ar(%struct.c2port_device* %62, i32 %63)
  %65 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %66 = load i64, i64* @C2PORT_BLOCK_READ, align 8
  %67 = call i32 @c2port_write_dr(%struct.c2port_device* %65, i64 %66)
  %68 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %69 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %5, align 8
  br label %188

75:                                               ; preds = %61
  %76 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %77 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %5, align 8
  br label %188

83:                                               ; preds = %75
  %84 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %85 = call i32 (%struct.c2port_device*, ...) @c2port_read_dr(%struct.c2port_device* %84, i64* %11)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %5, align 8
  br label %188

91:                                               ; preds = %83
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @C2PORT_COMMAND_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, i64* @EBUSY, align 8
  %97 = sub i64 0, %96
  store i64 %97, i64* %5, align 8
  br label %188

98:                                               ; preds = %91
  %99 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = lshr i64 %100, 8
  %102 = call i32 @c2port_write_dr(%struct.c2port_device* %99, i64 %101)
  %103 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %104 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %5, align 8
  br label %188

110:                                              ; preds = %98
  %111 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = and i64 %112, 255
  %114 = call i32 @c2port_write_dr(%struct.c2port_device* %111, i64 %113)
  %115 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %116 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %5, align 8
  br label %188

122:                                              ; preds = %110
  %123 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @c2port_write_dr(%struct.c2port_device* %123, i64 %124)
  %126 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %127 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %5, align 8
  br label %188

133:                                              ; preds = %122
  %134 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %135 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %5, align 8
  br label %188

141:                                              ; preds = %133
  %142 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %143 = call i32 (%struct.c2port_device*, ...) @c2port_read_dr(%struct.c2port_device* %142, i64* %11)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %5, align 8
  br label %188

149:                                              ; preds = %141
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @C2PORT_COMMAND_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i64, i64* @EBUSY, align 8
  %155 = sub i64 0, %154
  store i64 %155, i64* %5, align 8
  br label %188

156:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %157

157:                                              ; preds = %183, %156
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %12, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %157
  %163 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %164 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %5, align 8
  br label %188

170:                                              ; preds = %162
  %171 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = call i32 (%struct.c2port_device*, ...) @c2port_read_dr(%struct.c2port_device* %171, i8* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %5, align 8
  br label %188

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %157

186:                                              ; preds = %157
  %187 = load i64, i64* %12, align 8
  store i64 %187, i64* %5, align 8
  br label %188

188:                                              ; preds = %186, %179, %167, %153, %146, %138, %130, %119, %107, %95, %88, %80, %72, %59, %27
  %189 = load i64, i64* %5, align 8
  ret i64 %189
}

declare dso_local i32 @c2port_write_ar(%struct.c2port_device*, i32) #1

declare dso_local i32 @c2port_write_dr(%struct.c2port_device*, i64) #1

declare dso_local i32 @c2port_poll_in_busy(%struct.c2port_device*) #1

declare dso_local i32 @c2port_poll_out_ready(%struct.c2port_device*) #1

declare dso_local i32 @c2port_read_dr(%struct.c2port_device*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
