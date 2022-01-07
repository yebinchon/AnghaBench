; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_sdio_read_cis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_sdio_read_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.sdio_func_tuple*, i32 }
%struct.sdio_func_tuple = type { i8*, i8, i8, %struct.sdio_func_tuple* }
%struct.sdio_func = type { i8, %struct.sdio_func_tuple* }

@SDIO_FBR_CIS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CIS\00", align 1
@cis_tpl_list = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: queuing unknown CIS tuple 0x%02x (%u bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.sdio_func*)* @sdio_read_cis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_read_cis(%struct.mmc_card* %0, %struct.sdio_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdio_func_tuple*, align 8
  %8 = alloca %struct.sdio_func_tuple**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store %struct.sdio_func* %1, %struct.sdio_func** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %47, %2
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %20 = icmp ne %struct.sdio_func* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  store i8 %24, i8* %12, align 1
  br label %26

25:                                               ; preds = %18
  store i8 0, i8* %12, align 1
  br label %26

26:                                               ; preds = %25, %21
  %27 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %28 = load i8, i8* %12, align 1
  %29 = call i32 @SDIO_FBR_BASE(i8 zeroext %28)
  %30 = load i32, i32* @SDIO_FBR_CIS, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %31, %32
  %34 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %27, i32 0, i32 0, i32 %33, i32 0, i8* %11)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %210

39:                                               ; preds = %26
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = mul i32 %42, 8
  %44 = shl i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %52 = icmp ne %struct.sdio_func* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %55 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %54, i32 0, i32 1
  store %struct.sdio_func_tuple** %55, %struct.sdio_func_tuple*** %8, align 8
  br label %59

56:                                               ; preds = %50
  %57 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %57, i32 0, i32 0
  store %struct.sdio_func_tuple** %58, %struct.sdio_func_tuple*** %8, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.sdio_func_tuple**, %struct.sdio_func_tuple*** %8, align 8
  %61 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %60, align 8
  %62 = icmp ne %struct.sdio_func_tuple* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %210

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %196, %66
  %68 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %68, i32 0, i32 0, i32 %69, i32 0, i8* %13)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %200

75:                                               ; preds = %67
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 255
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %200

80:                                               ; preds = %75
  %81 = load i8, i8* %13, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %196

85:                                               ; preds = %80
  %86 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %86, i32 0, i32 0, i32 %87, i32 0, i8* %14)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %200

93:                                               ; preds = %85
  %94 = load i8, i8* %14, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %200

98:                                               ; preds = %93
  %99 = load i8, i8* %14, align 1
  %100 = zext i8 %99 to i64
  %101 = add i64 24, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.sdio_func_tuple* @kmalloc(i32 %102, i32 %103)
  store %struct.sdio_func_tuple* %104, %struct.sdio_func_tuple** %7, align 8
  %105 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %106 = icmp ne %struct.sdio_func_tuple* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %210

110:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %132, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i8, i8* %14, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ult i32 %112, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  %117 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %118, %119
  %121 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %122 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %117, i32 0, i32 0, i32 %120, i32 0, i8* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %135

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %111

135:                                              ; preds = %130, %111
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %140 = call i32 @kfree(%struct.sdio_func_tuple* %139)
  br label %200

141:                                              ; preds = %135
  %142 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %143 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %144 = load i32, i32* @cis_tpl_list, align 4
  %145 = load i32, i32* @cis_tpl_list, align 4
  %146 = call i32 @ARRAY_SIZE(i32 %145)
  %147 = load i8, i8* %13, align 1
  %148 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %149 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %14, align 1
  %152 = call i32 @cis_tpl_parse(%struct.mmc_card* %142, %struct.sdio_func* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %146, i8 zeroext %147, i8* %150, i8 zeroext %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @EILSEQ, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @ENOENT, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %157, %141
  %163 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %164 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %163, i32 0, i32 3
  store %struct.sdio_func_tuple* null, %struct.sdio_func_tuple** %164, align 8
  %165 = load i8, i8* %13, align 1
  %166 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %167 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %166, i32 0, i32 1
  store i8 %165, i8* %167, align 8
  %168 = load i8, i8* %14, align 1
  %169 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %170 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %169, i32 0, i32 2
  store i8 %168, i8* %170, align 1
  %171 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %172 = load %struct.sdio_func_tuple**, %struct.sdio_func_tuple*** %8, align 8
  store %struct.sdio_func_tuple* %171, %struct.sdio_func_tuple** %172, align 8
  %173 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %174 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %173, i32 0, i32 3
  store %struct.sdio_func_tuple** %174, %struct.sdio_func_tuple*** %8, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @ENOENT, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %162
  %180 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %181 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @mmc_hostname(i32 %182)
  %184 = load i8, i8* %13, align 1
  %185 = load i8, i8* %14, align 1
  %186 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %183, i8 zeroext %184, i8 zeroext %185)
  br label %187

187:                                              ; preds = %179, %162
  store i32 0, i32* %6, align 4
  br label %191

188:                                              ; preds = %157
  %189 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %7, align 8
  %190 = call i32 @kfree(%struct.sdio_func_tuple* %189)
  br label %191

191:                                              ; preds = %188, %187
  %192 = load i8, i8* %14, align 1
  %193 = zext i8 %192 to i32
  %194 = load i32, i32* %10, align 4
  %195 = add i32 %194, %193
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %191, %84
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  br i1 %199, label %67, label %200

200:                                              ; preds = %196, %138, %97, %92, %79, %74
  %201 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %202 = icmp ne %struct.sdio_func* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %205 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %204, i32 0, i32 0
  %206 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %205, align 8
  %207 = load %struct.sdio_func_tuple**, %struct.sdio_func_tuple*** %8, align 8
  store %struct.sdio_func_tuple* %206, %struct.sdio_func_tuple** %207, align 8
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %107, %63, %37
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @SDIO_FBR_BASE(i8 zeroext) #1

declare dso_local %struct.sdio_func_tuple* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.sdio_func_tuple*) #1

declare dso_local i32 @cis_tpl_parse(%struct.mmc_card*, %struct.sdio_func*, i8*, i32, i32, i8 zeroext, i8*, i8 zeroext) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
