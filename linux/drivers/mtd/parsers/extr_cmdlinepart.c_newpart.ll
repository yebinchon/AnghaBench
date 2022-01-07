; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_cmdlinepart.c_newpart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_cmdlinepart.c_newpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_partition = type { i64, i64, i32, i8* }

@OFFSET_CONTINUOUS = common dso_local global i64 0, align 8
@SIZE_REMAINING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"partition has size 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"no closing %c found in partition name\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"lk\00", align 1
@MTD_POWERUP_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"no partitions allowed after a fill-up partition\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Partition_%03d\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"partition %d: name <%s>, offset %llx, size %llx, mask flags %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtd_partition* (i8*, i8**, i32*, i32, i8**, i32)* @newpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtd_partition* @newpart(i8* %0, i8** %1, i32* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca %struct.mtd_partition*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_partition*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load i64, i64* @OFFSET_CONTINUOUS, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i64, i64* @SIZE_REMAINING, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %44

33:                                               ; preds = %6
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @memparse(i8* %34, i8** %8)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.mtd_partition* @ERR_PTR(i32 %41)
  store %struct.mtd_partition* %42, %struct.mtd_partition** %7, align 8
  br label %248

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %29
  store i32 0, i32* %21, align 4
  store i8 0, i8* %20, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 64
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @memparse(i8* %52, i8** %8)
  store i64 %53, i64* %16, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 40
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8 41, i8* %20, align 1
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i8, i8* %20, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8* %65, i8** %17, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load i8, i8* %20, align 1
  %68 = call i8* @strchr(i8* %66, i8 signext %67)
  store i8* %68, i8** %22, align 8
  %69 = load i8*, i8** %22, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load i8, i8* %20, align 1
  %73 = sext i8 %72 to i32
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  %77 = call %struct.mtd_partition* @ERR_PTR(i32 %76)
  store %struct.mtd_partition* %77, %struct.mtd_partition** %7, align 8
  br label %248

78:                                               ; preds = %63
  %79 = load i8*, i8** %22, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %18, align 4
  %85 = load i8*, i8** %22, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %8, align 8
  br label %88

87:                                               ; preds = %60
  store i8* null, i8** %17, align 8
  store i32 13, i32* %18, align 4
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i64 @strncmp(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i32, i32* @MTD_WRITEABLE, align 4
  %98 = load i32, i32* %21, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %21, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %96, %88
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @strncmp(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* @MTD_POWERUP_LOCK, align 4
  %108 = load i32, i32* %21, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %21, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %8, align 8
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 44
  br i1 %116, label %117, label %140

117:                                              ; preds = %112
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* @SIZE_REMAINING, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  %125 = call %struct.mtd_partition* @ERR_PTR(i32 %124)
  store %struct.mtd_partition* %125, %struct.mtd_partition** %7, align 8
  br label %248

126:                                              ; preds = %117
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* %13, align 4
  %133 = call %struct.mtd_partition* @newpart(i8* %128, i8** %8, i32* %129, i32 %131, i8** %19, i32 %132)
  store %struct.mtd_partition* %133, %struct.mtd_partition** %14, align 8
  %134 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %135 = call i64 @IS_ERR(%struct.mtd_partition* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  store %struct.mtd_partition* %138, %struct.mtd_partition** %7, align 8
  br label %248

139:                                              ; preds = %126
  br label %168

140:                                              ; preds = %112
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32*, i32** %10, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 32
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %147, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call %struct.mtd_partition* @kzalloc(i32 %152, i32 %153)
  store %struct.mtd_partition* %154, %struct.mtd_partition** %14, align 8
  %155 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %156 = icmp ne %struct.mtd_partition* %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %140
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  %160 = call %struct.mtd_partition* @ERR_PTR(i32 %159)
  store %struct.mtd_partition* %160, %struct.mtd_partition** %7, align 8
  br label %248

161:                                              ; preds = %140
  %162 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %162, i64 %165
  %167 = bitcast %struct.mtd_partition* %166 to i8*
  store i8* %167, i8** %19, align 8
  br label %168

168:                                              ; preds = %161, %139
  %169 = load i64, i64* %15, align 8
  %170 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %170, i64 %172
  %174 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %173, i32 0, i32 0
  store i64 %169, i64* %174, align 8
  %175 = load i64, i64* %16, align 8
  %176 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %176, i64 %178
  %180 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %179, i32 0, i32 1
  store i64 %175, i64* %180, align 8
  %181 = load i32, i32* %21, align 4
  %182 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %182, i64 %184
  %186 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %185, i32 0, i32 2
  store i32 %181, i32* %186, align 8
  %187 = load i8*, i8** %17, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %168
  %190 = load i8*, i8** %19, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i32 @strlcpy(i8* %190, i8* %191, i32 %193)
  br label %199

195:                                              ; preds = %168
  %196 = load i8*, i8** %19, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @sprintf(i8* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %195, %189
  %200 = load i8*, i8** %19, align 8
  %201 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %201, i64 %203
  %205 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %204, i32 0, i32 3
  store i8* %200, i8** %205, align 8
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i8*, i8** %19, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %19, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %212, i64 %214
  %216 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %215, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %218, i64 %220
  %222 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %224, i64 %226
  %228 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %230, i64 %232
  %234 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = zext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @dbg(i8* %237)
  %239 = load i8**, i8*** %12, align 8
  %240 = icmp ne i8** %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %199
  %242 = load i8*, i8** %19, align 8
  %243 = load i8**, i8*** %12, align 8
  store i8* %242, i8** %243, align 8
  br label %244

244:                                              ; preds = %241, %199
  %245 = load i8*, i8** %8, align 8
  %246 = load i8**, i8*** %9, align 8
  store i8* %245, i8** %246, align 8
  %247 = load %struct.mtd_partition*, %struct.mtd_partition** %14, align 8
  store %struct.mtd_partition* %247, %struct.mtd_partition** %7, align 8
  br label %248

248:                                              ; preds = %244, %157, %137, %121, %71, %38
  %249 = load %struct.mtd_partition*, %struct.mtd_partition** %7, align 8
  ret %struct.mtd_partition* %249
}

declare dso_local i64 @memparse(i8*, i8**) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.mtd_partition* @ERR_PTR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtd_partition*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
