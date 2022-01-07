; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c___nfp_nsp_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c___nfp_nsp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32, %struct.nfp_cpp* }
%struct.nfp_cpp = type { i32 }
%struct.nfp_nsp_command_arg = type { i32, i32, i32, i32, i32 (%struct.nfp_nsp.0*, i32)*, i32, i64 }
%struct.nfp_nsp.0 = type opaque

@NSP_STATUS = common dso_local global i32 0, align 4
@NSP_COMMAND = common dso_local global i32 0, align 4
@NSP_BUFFER = common dso_local global i32 0, align 4
@NSP_COMMAND_OPTION = common dso_local global i32 0, align 4
@NSP_COMMAND_CODE = common dso_local global i32 0, align 4
@NSP_COMMAND_DMA_BUF = common dso_local global i32 0, align 4
@NSP_COMMAND_START = common dso_local global i32 0, align 4
@NFP_NSP_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error %d waiting for code 0x%04x to start\0A\00", align 1
@NSP_STATUS_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error %d waiting for code 0x%04x to complete\0A\00", align 1
@NSP_STATUS_RESULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Result (error) code set: %d (%d) command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_nsp*, %struct.nfp_nsp_command_arg*)* @__nfp_nsp_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfp_nsp_command(%struct.nfp_nsp* %0, %struct.nfp_nsp_command_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_nsp*, align 8
  %5 = alloca %struct.nfp_nsp_command_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_cpp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %4, align 8
  store %struct.nfp_nsp_command_arg* %1, %struct.nfp_nsp_command_arg** %5, align 8
  %15 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %15, i32 0, i32 1
  %17 = load %struct.nfp_cpp*, %struct.nfp_cpp** %16, align 8
  store %struct.nfp_cpp* %17, %struct.nfp_cpp** %12, align 8
  %18 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @nfp_resource_cpp_id(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nfp_resource_address(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NSP_STATUS, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NSP_COMMAND, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NSP_BUFFER, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %36 = call i32 @nfp_nsp_check(%struct.nfp_nsp* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %3, align 4
  br label %180

41:                                               ; preds = %2
  %42 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %46 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @nfp_cpp_writeq(%struct.nfp_cpp* %42, i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %3, align 4
  br label %180

53:                                               ; preds = %41
  %54 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @NSP_COMMAND_OPTION, align 4
  %58 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %59 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @FIELD_PREP(i32 %57, i32 %60)
  %62 = load i32, i32* @NSP_COMMAND_CODE, align 4
  %63 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %64 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @FIELD_PREP(i32 %62, i32 %65)
  %67 = or i32 %61, %66
  %68 = load i32, i32* @NSP_COMMAND_DMA_BUF, align 4
  %69 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %70 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FIELD_PREP(i32 %68, i32 %71)
  %73 = or i32 %67, %72
  %74 = load i32, i32* @NSP_COMMAND_START, align 4
  %75 = call i32 @FIELD_PREP(i32 %74, i32 1)
  %76 = or i32 %73, %75
  %77 = call i32 @nfp_cpp_writeq(%struct.nfp_cpp* %54, i32 %55, i32 %56, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %53
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %3, align 4
  br label %180

82:                                               ; preds = %53
  %83 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @NSP_COMMAND_START, align 4
  %87 = load i32, i32* @NFP_NSP_TIMEOUT_DEFAULT, align 4
  %88 = call i32 @nfp_nsp_wait_reg(%struct.nfp_cpp* %83, i32* %6, i32 %84, i32 %85, i32 %86, i32 0, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %95 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nfp_err(%struct.nfp_cpp* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %3, align 4
  br label %180

99:                                               ; preds = %82
  %100 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @NSP_STATUS_BUSY, align 4
  %104 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %105 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %112

109:                                              ; preds = %99
  %110 = load i32, i32* @NFP_NSP_TIMEOUT_DEFAULT, align 4
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i64 [ %106, %108 ], [ %111, %109 ]
  %114 = trunc i64 %113 to i32
  %115 = call i32 @nfp_nsp_wait_reg(%struct.nfp_cpp* %100, i32* %6, i32 %101, i32 %102, i32 %103, i32 0, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %122 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @nfp_err(%struct.nfp_cpp* %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %3, align 4
  br label %180

126:                                              ; preds = %112
  %127 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @nfp_cpp_readq(%struct.nfp_cpp* %127, i32 %128, i32 %129, i32* %7)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %3, align 4
  br label %180

135:                                              ; preds = %126
  %136 = load i32, i32* @NSP_COMMAND_OPTION, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @FIELD_GET(i32 %136, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @NSP_STATUS_RESULT, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @FIELD_GET(i32 %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %135
  %145 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %146 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %144
  %150 = load %struct.nfp_cpp*, %struct.nfp_cpp** %12, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sub nsw i32 0, %151
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %155 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @nfp_warn(%struct.nfp_cpp* %150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %149, %144
  %159 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %160 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %159, i32 0, i32 4
  %161 = load i32 (%struct.nfp_nsp.0*, i32)*, i32 (%struct.nfp_nsp.0*, i32)** %160, align 8
  %162 = icmp ne i32 (%struct.nfp_nsp.0*, i32)* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.nfp_nsp_command_arg*, %struct.nfp_nsp_command_arg** %5, align 8
  %165 = getelementptr inbounds %struct.nfp_nsp_command_arg, %struct.nfp_nsp_command_arg* %164, i32 0, i32 4
  %166 = load i32 (%struct.nfp_nsp.0*, i32)*, i32 (%struct.nfp_nsp.0*, i32)** %165, align 8
  %167 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %168 = bitcast %struct.nfp_nsp* %167 to %struct.nfp_nsp.0*
  %169 = load i32, i32* %7, align 4
  %170 = call i32 %166(%struct.nfp_nsp.0* %168, i32 %169)
  br label %175

171:                                              ; preds = %158
  %172 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @nfp_nsp_print_extended_error(%struct.nfp_nsp* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %163
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %180

178:                                              ; preds = %135
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %175, %133, %118, %91, %80, %51, %39
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @nfp_resource_cpp_id(i32) #1

declare dso_local i32 @nfp_resource_address(i32) #1

declare dso_local i32 @nfp_nsp_check(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_cpp_writeq(%struct.nfp_cpp*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @nfp_nsp_wait_reg(%struct.nfp_cpp*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i32) #1

declare dso_local i32 @nfp_cpp_readq(%struct.nfp_cpp*, i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*, i32, i32, i32) #1

declare dso_local i32 @nfp_nsp_print_extended_error(%struct.nfp_nsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
