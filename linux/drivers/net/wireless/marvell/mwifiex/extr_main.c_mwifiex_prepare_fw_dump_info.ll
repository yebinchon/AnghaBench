; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_prepare_fw_dump_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_prepare_fw_dump_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i32, i8*, %struct.memory_type_mapping* }
%struct.memory_type_mapping = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"========Start dump \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"========\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0A========End dump========\0A\00", align 1
@MWIFIEX_FW_DUMP_SIZE = common dso_local global i64 0, align 8
@MSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Realloc device dump data.\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"vzalloc devdump data failure!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_prepare_fw_dump_info(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.memory_type_mapping*, align 8
  %7 = alloca %struct.memory_type_mapping*, align 8
  %8 = alloca %struct.memory_type_mapping*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 3
  %18 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %18, i64 %19
  store %struct.memory_type_mapping* %20, %struct.memory_type_mapping** %6, align 8
  %21 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %6, align 8
  %22 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %15
  %26 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %6, align 8
  %28 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %26, %30
  %32 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %33 = add nsw i64 %31, %32
  %34 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %6, align 8
  %35 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = add nsw i64 %33, %37
  %39 = call i64 @strlen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %25, %15
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %9

47:                                               ; preds = %9
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 1
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = load i64, i64* @MWIFIEX_FW_DUMP_SIZE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %47
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, 1
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %59, %63
  %65 = call i8* @vzalloc(i64 %64)
  store i8* %65, i8** %4, align 8
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %67 = load i32, i32* @MSG, align 4
  %68 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %66, i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %57
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @vfree(i8* %74)
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %76, i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %198

79:                                               ; preds = %57
  %80 = load i8*, i8** %4, align 8
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memmove(i8* %80, i8* %83, i32 %86)
  %88 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @vfree(i8* %90)
  %92 = load i8*, i8** %4, align 8
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %79, %47
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  store i8* %103, i8** %4, align 8
  store i64 0, i64* %3, align 8
  br label %104

104:                                              ; preds = %161, %95
  %105 = load i64, i64* %3, align 8
  %106 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %164

110:                                              ; preds = %104
  %111 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %111, i32 0, i32 3
  %113 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %112, align 8
  %114 = load i64, i64* %3, align 8
  %115 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %113, i64 %114
  store %struct.memory_type_mapping* %115, %struct.memory_type_mapping** %7, align 8
  %116 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %7, align 8
  %117 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %160

120:                                              ; preds = %110
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strcpy(i8* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %123 = call i64 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %4, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %7, align 8
  %128 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strcpy(i8* %126, i8* %129)
  %131 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %7, align 8
  %132 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 %134
  store i8* %136, i8** %4, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @strcpy(i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %139 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 %139
  store i8* %141, i8** %4, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %7, align 8
  %144 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %7, align 8
  %147 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @memcpy(i8* %142, i8* %145, i64 %148)
  %150 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %7, align 8
  %151 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 %152
  store i8* %154, i8** %4, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @strcpy(i8* %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %157 = call i64 @strlen(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8* %159, i8** %4, align 8
  br label %160

160:                                              ; preds = %120, %110
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %3, align 8
  br label %104

164:                                              ; preds = %104
  %165 = load i8*, i8** %4, align 8
  %166 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %167 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = ptrtoint i8* %165 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %174 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  store i64 0, i64* %3, align 8
  br label %175

175:                                              ; preds = %195, %164
  %176 = load i64, i64* %3, align 8
  %177 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %178 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ult i64 %176, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %175
  %182 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %183 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %182, i32 0, i32 3
  %184 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %183, align 8
  %185 = load i64, i64* %3, align 8
  %186 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %184, i64 %185
  store %struct.memory_type_mapping* %186, %struct.memory_type_mapping** %8, align 8
  %187 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %8, align 8
  %188 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @vfree(i8* %189)
  %191 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %8, align 8
  %192 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %191, i32 0, i32 0
  store i8* null, i8** %192, align 8
  %193 = load %struct.memory_type_mapping*, %struct.memory_type_mapping** %8, align 8
  %194 = getelementptr inbounds %struct.memory_type_mapping, %struct.memory_type_mapping* %193, i32 0, i32 2
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %181
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %3, align 8
  br label %175

198:                                              ; preds = %71, %175
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @vzalloc(i64) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
