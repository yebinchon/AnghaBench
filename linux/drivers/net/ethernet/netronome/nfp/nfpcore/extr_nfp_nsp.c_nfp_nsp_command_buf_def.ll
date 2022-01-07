; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_command_buf_def.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_command_buf_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32, %struct.nfp_cpp* }
%struct.nfp_cpp = type { i32 }
%struct.nfp_nsp_command_buf_arg = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NSP_DFLT_BUFFER = common dso_local global i64 0, align 8
@NSP_DFLT_BUFFER_CPP = common dso_local global i32 0, align 4
@NSP_DFLT_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@NSP_BUFFER_CPP = common dso_local global i32 0, align 4
@NSP_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Buffer out of reach %08x %016llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_nsp*, %struct.nfp_nsp_command_buf_arg*)* @nfp_nsp_command_buf_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_nsp_command_buf_def(%struct.nfp_nsp* %0, %struct.nfp_nsp_command_buf_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_nsp*, align 8
  %5 = alloca %struct.nfp_nsp_command_buf_arg*, align 8
  %6 = alloca %struct.nfp_cpp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %4, align 8
  store %struct.nfp_nsp_command_buf_arg* %1, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %12 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %12, i32 0, i32 1
  %14 = load %struct.nfp_cpp*, %struct.nfp_cpp** %13, align 8
  store %struct.nfp_cpp* %14, %struct.nfp_cpp** %6, align 8
  %15 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %16 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %17 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nfp_resource_cpp_id(i32 %18)
  %20 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @nfp_resource_address(i32 %22)
  %24 = load i64, i64* @NSP_DFLT_BUFFER, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @nfp_cpp_readq(%struct.nfp_cpp* %15, i32 %19, i64 %25, i32* %7)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %172

31:                                               ; preds = %2
  %32 = load i32, i32* @NSP_DFLT_BUFFER_CPP, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FIELD_GET(i32 %32, i32 %33)
  %35 = shl i32 %34, 8
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @NSP_DFLT_BUFFER_ADDRESS, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @FIELD_GET(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %31
  %44 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %53 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %56 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nfp_cpp_write(%struct.nfp_cpp* %49, i32 %50, i32 %51, i32 %54, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %172

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %43, %31
  %65 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %66 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %64
  %70 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %71 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %69
  %75 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %76 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %79 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %74
  %83 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %87 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %91 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %94 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %97 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = call i32 @nfp_cpp_write(%struct.nfp_cpp* %83, i32 %84, i32 %89, i32 %92, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %82
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %172

105:                                              ; preds = %82
  br label %106

106:                                              ; preds = %105, %74, %69, %64
  %107 = load i32, i32* @NSP_BUFFER_CPP, align 4
  %108 = load i32, i32* %11, align 4
  %109 = ashr i32 %108, 8
  %110 = call i32 @FIELD_FIT(i32 %107, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i32, i32* @NSP_BUFFER_ADDRESS, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @FIELD_FIT(i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112, %106
  %118 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @nfp_err(%struct.nfp_cpp* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %172

124:                                              ; preds = %112
  %125 = load i32, i32* @NSP_BUFFER_CPP, align 4
  %126 = load i32, i32* %11, align 4
  %127 = ashr i32 %126, 8
  %128 = call i32 @FIELD_PREP(i32 %125, i32 %127)
  %129 = load i32, i32* @NSP_BUFFER_ADDRESS, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @FIELD_PREP(i32 %129, i32 %130)
  %132 = or i32 %128, %131
  %133 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %134 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %137 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %138 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %137, i32 0, i32 3
  %139 = call i32 @__nfp_nsp_command(%struct.nfp_nsp* %136, %struct.TYPE_2__* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %124
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %3, align 4
  br label %172

144:                                              ; preds = %124
  %145 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %146 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %144
  %150 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %151 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %159 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.nfp_nsp_command_buf_arg*, %struct.nfp_nsp_command_buf_arg** %5, align 8
  %162 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, %struct.nfp_nsp_command_buf_arg* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @nfp_cpp_read(%struct.nfp_cpp* %155, i32 %156, i32 %157, i32 %160, i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %154
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %3, align 4
  br label %172

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %149, %144
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %167, %142, %117, %103, %61, %29
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @nfp_cpp_readq(%struct.nfp_cpp*, i32, i64, i32*) #1

declare dso_local i32 @nfp_resource_cpp_id(i32) #1

declare dso_local i64 @nfp_resource_address(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @nfp_cpp_write(%struct.nfp_cpp*, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_FIT(i32, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @__nfp_nsp_command(%struct.nfp_nsp*, %struct.TYPE_2__*) #1

declare dso_local i32 @nfp_cpp_read(%struct.nfp_cpp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
