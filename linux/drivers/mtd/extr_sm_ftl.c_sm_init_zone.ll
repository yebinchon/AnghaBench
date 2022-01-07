; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_init_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_init_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i32, i8*, %struct.ftl_zone* }
%struct.ftl_zone = type { i8**, i32, i32 }
%struct.sm_oob = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"initializing zone %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PH %04d <-> <marked bad>\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"PH %04d <-> LBA %04d(bad)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"PH %04d <-> LBA %04d\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"collision of LBA %d between blocks %d and %d in zone %d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"both blocks are valid, erasing the later\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"zone initialized\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"no free blocks in zone %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32)* @sm_init_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_init_zone(%struct.sm_ftl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm_ftl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftl_zone*, align 8
  %7 = alloca %struct.sm_oob, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %13 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %12, i32 0, i32 3
  %14 = load %struct.ftl_zone*, %struct.ftl_zone** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %14, i64 %16
  store %struct.ftl_zone* %17, %struct.ftl_zone** %6, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %21 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8** @kmalloc_array(i32 %22, i32 2, i32 %23)
  %25 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %26 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %25, i32 0, i32 0
  store i8** %24, i8*** %26, align 8
  %27 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %28 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %226

34:                                               ; preds = %2
  %35 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %36 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %39 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @memset(i8** %37, i32 -1, i32 %41)
  %43 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %44 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %43, i32 0, i32 2
  %45 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %46 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 2
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i64 @kfifo_alloc(i32* %44, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  %53 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %54 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = call i32 @kfree(i8** %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %226

59:                                               ; preds = %34
  store i8* null, i8** %8, align 8
  br label %60

60:                                               ; preds = %186, %59
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %63 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = icmp ult i8* %61, %66
  br i1 %67, label %68, label %189

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %74 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ule i8* %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %186

78:                                               ; preds = %71, %68
  %79 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @sm_read_sector(%struct.sm_ftl* %79, i32 %80, i8* %81, i32 0, i32* null, %struct.sm_oob* %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %86 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %85, i32 0, i32 2
  %87 = call i32 @kfifo_free(i32* %86)
  %88 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %89 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = call i32 @kfree(i8** %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %226

94:                                               ; preds = %78
  %95 = call i64 @sm_block_erased(%struct.sm_oob* %7)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %99 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %98, i32 0, i32 2
  %100 = bitcast i8** %8 to i8*
  %101 = call i32 @kfifo_in(i32* %99, i8* %100, i32 2)
  br label %186

102:                                              ; preds = %94
  %103 = call i32 @sm_block_valid(%struct.sm_oob* %7)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  br label %186

108:                                              ; preds = %102
  %109 = call i32 @sm_read_lba(%struct.sm_oob* %7)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, -2
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %115 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112, %108
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %119, i32 %120)
  br label %186

122:                                              ; preds = %112
  %123 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %124 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ult i8* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %122
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @dbg_verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %132, i32 %133)
  %135 = load i8*, i8** %8, align 8
  %136 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %137 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %135, i8** %141, align 8
  br label %186

142:                                              ; preds = %122
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %145 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %144, i32 0, i32 0
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i8*, ...) @sm_printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %143, i8* %150, i8* %151, i32 %152)
  %154 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = call i64 @sm_check_block(%struct.sm_ftl* %154, i32 %155, i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %142
  br label %186

160:                                              ; preds = %142
  %161 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %164 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @sm_check_block(%struct.sm_ftl* %161, i32 %162, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %160
  %173 = load i8*, i8** %8, align 8
  %174 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %175 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %174, i32 0, i32 0
  %176 = load i8**, i8*** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* %173, i8** %179, align 8
  br label %186

180:                                              ; preds = %160
  %181 = call i32 (i8*, ...) @sm_printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %182 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @sm_erase_block(%struct.sm_ftl* %182, i32 %183, i8* %184, i32 1)
  br label %186

186:                                              ; preds = %180, %172, %159, %131, %118, %105, %97, %77
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %8, align 8
  br label %60

189:                                              ; preds = %60
  %190 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %191 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %192 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %191, i32 0, i32 1
  store i32 1, i32* %192, align 8
  %193 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %194 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %193, i32 0, i32 2
  %195 = call i32 @kfifo_len(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (i8*, ...) @sm_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  store i32 0, i32* %3, align 4
  br label %226

200:                                              ; preds = %189
  %201 = call i32 @get_random_bytes(i32* %10, i32 2)
  %202 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %203 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %202, i32 0, i32 2
  %204 = call i32 @kfifo_len(i32* %203)
  %205 = sdiv i32 %204, 2
  %206 = load i32, i32* %10, align 4
  %207 = srem i32 %206, %205
  store i32 %207, i32* %10, align 4
  br label %208

208:                                              ; preds = %212, %200
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %10, align 4
  %211 = icmp ne i32 %209, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %208
  %213 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %214 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %213, i32 0, i32 2
  %215 = bitcast i8** %8 to i8*
  %216 = call i32 @kfifo_out(i32* %214, i8* %215, i32 2)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 2
  %219 = zext i1 %218 to i32
  %220 = call i32 @WARN_ON(i32 %219)
  %221 = load %struct.ftl_zone*, %struct.ftl_zone** %6, align 8
  %222 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %221, i32 0, i32 2
  %223 = bitcast i8** %8 to i8*
  %224 = call i32 @kfifo_in(i32* %222, i8* %223, i32 2)
  br label %208

225:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %197, %84, %52, %31
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i64 @sm_read_sector(%struct.sm_ftl*, i32, i8*, i32, i32*, %struct.sm_oob*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i64 @sm_block_erased(%struct.sm_oob*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @sm_block_valid(%struct.sm_oob*) #1

declare dso_local i32 @sm_read_lba(%struct.sm_oob*) #1

declare dso_local i32 @dbg_verbose(i8*, i8*, i32) #1

declare dso_local i32 @sm_printk(i8*, ...) #1

declare dso_local i64 @sm_check_block(%struct.sm_ftl*, i32, i8*) #1

declare dso_local i32 @sm_erase_block(%struct.sm_ftl*, i32, i8*, i32) #1

declare dso_local i32 @kfifo_len(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
