; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_nvm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_nvm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i8*, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_24__, %struct.TYPE_23__*, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32* }

@NVM_MAX_NUM_SECTIONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Read from NVM\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"OTP is blank\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nvm version = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_nvm_init(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 5
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 5
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NVM_MAX_NUM_SECTIONS, align 4
  %21 = icmp sge i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %209

28:                                               ; preds = %1
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @IWL_DEBUG_EEPROM(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @kmalloc(i32 %43, i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %28
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %209

51:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %111, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NVM_MAX_NUM_SECTIONS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %52
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @iwl_nvm_read_section(%struct.iwl_mvm* %57, i32 %58, i32* %59, i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ENODATA, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %111

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %114

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32* @kmemdup(i32* %76, i32 %77, i32 %78)
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %114

85:                                               ; preds = %71
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %86, i32 0, i32 2
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @iwl_nvm_fixups(i32 %90, i32 %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 3
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i32* %95, i32** %102, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %104, i32 0, i32 3
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 8
  br label %111

111:                                              ; preds = %85, %66
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %52

114:                                              ; preds = %82, %70, %52
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %119 = call i32 @IWL_ERR(%struct.iwl_mvm* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @kfree(i32* %121)
  %123 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %178

127:                                              ; preds = %120
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %128, i32 0, i32 2
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %134, i32 0, i32 3
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = call i32 @iwl_read_external_nvm(%struct.TYPE_13__* %130, i8* %133, %struct.TYPE_14__* %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %127
  %141 = load i8*, i8** %9, align 8
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %143 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @EFAULT, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %153, label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @ENOENT, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %148, %140
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  %159 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %160 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %159, i32 0, i32 2
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %163 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %166 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %165, i32 0, i32 3
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = call i32 @iwl_read_external_nvm(%struct.TYPE_13__* %161, i8* %164, %struct.TYPE_14__* %167)
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %158
  %172 = load i32, i32* %4, align 4
  store i32 %172, i32* %2, align 4
  br label %209

173:                                              ; preds = %158
  br label %176

174:                                              ; preds = %153, %148
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %2, align 4
  br label %209

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %176, %127
  br label %178

178:                                              ; preds = %177, %120
  %179 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %180 = call %struct.TYPE_15__* @iwl_parse_nvm_sections(%struct.iwl_mvm* %179)
  %181 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %182 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %181, i32 0, i32 1
  store %struct.TYPE_15__* %180, %struct.TYPE_15__** %182, align 8
  %183 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %183, i32 0, i32 1
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = icmp ne %struct.TYPE_15__* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %178
  %188 = load i32, i32* @ENODATA, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %209

190:                                              ; preds = %178
  %191 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %192 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %191, i32 0, i32 2
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %197 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %196, i32 0, i32 1
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32, i8*, ...) @IWL_DEBUG_EEPROM(i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %190
  %205 = load i32, i32* %4, align 4
  br label %207

206:                                              ; preds = %190
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i32 [ %205, %204 ], [ 0, %206 ]
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %187, %174, %171, %48, %25
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @iwl_nvm_read_section(%struct.iwl_mvm*, i32, i32*, i64) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @iwl_nvm_fixups(i32, i32, i32*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iwl_read_external_nvm(%struct.TYPE_13__*, i8*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @iwl_parse_nvm_sections(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
