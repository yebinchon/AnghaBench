; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c___c2port_write_flash_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c___c2port_write_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@C2PORT_FPDAT = common dso_local global i32 0, align 4
@C2PORT_BLOCK_WRITE = common dso_local global i8 0, align 1
@C2PORT_COMMAND_OK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*, i8*, i64, i64)* @__c2port_write_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__c2port_write_flash_data(%struct.c2port_device* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
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
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %12, align 8
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %25 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %28 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %26, %29
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %37 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %40 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %38, %41
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %35, %23
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %48 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.c2port_ops*, %struct.c2port_ops** %10, align 8
  %51 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = mul i64 %49, %52
  %54 = icmp uge i64 %46, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %187

58:                                               ; preds = %45
  %59 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %60 = load i32, i32* @C2PORT_FPDAT, align 4
  %61 = call i32 @c2port_write_ar(%struct.c2port_device* %59, i32 %60)
  %62 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %63 = load i8, i8* @C2PORT_BLOCK_WRITE, align 1
  %64 = call i32 @c2port_write_dr(%struct.c2port_device* %62, i8 signext %63)
  %65 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %66 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %187

71:                                               ; preds = %58
  %72 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %73 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  br label %187

78:                                               ; preds = %71
  %79 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %80 = call i32 @c2port_read_dr(%struct.c2port_device* %79, i64* %11)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %5, align 4
  br label %187

85:                                               ; preds = %78
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @C2PORT_COMMAND_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %187

92:                                               ; preds = %85
  %93 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = lshr i64 %94, 8
  %96 = trunc i64 %95 to i8
  %97 = call i32 @c2port_write_dr(%struct.c2port_device* %93, i8 signext %96)
  %98 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %99 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  br label %187

104:                                              ; preds = %92
  %105 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %106 = load i64, i64* %8, align 8
  %107 = and i64 %106, 255
  %108 = trunc i64 %107 to i8
  %109 = call i32 @c2port_write_dr(%struct.c2port_device* %105, i8 signext %108)
  %110 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %111 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %187

116:                                              ; preds = %104
  %117 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %118 = load i64, i64* %12, align 8
  %119 = trunc i64 %118 to i8
  %120 = call i32 @c2port_write_dr(%struct.c2port_device* %117, i8 signext %119)
  %121 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %122 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %5, align 4
  br label %187

127:                                              ; preds = %116
  %128 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %129 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %5, align 4
  br label %187

134:                                              ; preds = %127
  %135 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %136 = call i32 @c2port_read_dr(%struct.c2port_device* %135, i64* %11)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %187

141:                                              ; preds = %134
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @C2PORT_COMMAND_OK, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %187

148:                                              ; preds = %141
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %174, %148
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %12, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @c2port_write_dr(%struct.c2port_device* %155, i8 signext %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %5, align 4
  br label %187

166:                                              ; preds = %154
  %167 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %168 = call i32 @c2port_poll_in_busy(%struct.c2port_device* %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %5, align 4
  br label %187

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %149

177:                                              ; preds = %149
  %178 = load %struct.c2port_device*, %struct.c2port_device** %6, align 8
  %179 = call i32 @c2port_poll_out_ready(%struct.c2port_device* %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %5, align 4
  br label %187

184:                                              ; preds = %177
  %185 = load i64, i64* %12, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %184, %182, %171, %164, %145, %139, %132, %125, %114, %102, %89, %83, %76, %69, %55
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @c2port_write_ar(%struct.c2port_device*, i32) #1

declare dso_local i32 @c2port_write_dr(%struct.c2port_device*, i8 signext) #1

declare dso_local i32 @c2port_poll_in_busy(%struct.c2port_device*) #1

declare dso_local i32 @c2port_poll_out_ready(%struct.c2port_device*) #1

declare dso_local i32 @c2port_read_dr(%struct.c2port_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
