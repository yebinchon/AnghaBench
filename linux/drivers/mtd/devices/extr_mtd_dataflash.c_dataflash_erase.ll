; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.dataflash* }
%struct.dataflash = type { i32, i32, i32, i32*, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.erase_info = type { i64, i64 }
%struct.spi_transfer = type { i32, i32* }
%struct.spi_message = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"erase addr=0x%llx len 0x%llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OP_ERASE_BLOCK = common dso_local global i32 0, align 4
@OP_ERASE_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ERASE %s: (%x) %x %x %x [%i]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"erase %x, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @dataflash_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataflash_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.dataflash*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca %struct.spi_message, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load %struct.dataflash*, %struct.dataflash** %17, align 8
  store %struct.dataflash* %18, %struct.dataflash** %6, align 8
  %19 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %20 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %19, i32 0, i32 4
  %21 = load %struct.spi_device*, %struct.spi_device** %20, align 8
  store %struct.spi_device* %21, %struct.spi_device** %7, align 8
  %22 = bitcast %struct.spi_transfer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %24 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 3
  store i32 %26, i32* %10, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %30 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %33 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34)
  %36 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %37 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %40 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @div_u64_rem(i64 %38, i32 %41, i64* %12)
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %193

48:                                               ; preds = %2
  %49 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %50 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %53 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @div_u64_rem(i64 %51, i32 %54, i64* %12)
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %193

61:                                               ; preds = %48
  %62 = call i32 @spi_message_init(%struct.spi_message* %9)
  %63 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %64 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %11, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32* %65, i32** %66, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %9)
  %69 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %70 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %69, i32 0, i32 2
  %71 = call i32 @mutex_lock(i32* %70)
  br label %72

72:                                               ; preds = %188, %149, %61
  %73 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %74 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %189

77:                                               ; preds = %72
  %78 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %79 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %82 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @div_u64(i64 %80, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, 7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %90 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp sge i64 %91, %93
  br label %95

95:                                               ; preds = %88, %77
  %96 = phi i1 [ false, %77 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %100 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %98, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @OP_ERASE_BLOCK, align 4
  br label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @OP_ERASE_PAGE, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %13, align 4
  %114 = lshr i32 %113, 16
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %13, align 4
  %118 = lshr i32 %117, 8
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 0, i32* %122, align 4
  %123 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %124 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %123, i32 0, i32 0
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %141)
  %143 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %144 = call i32 @spi_sync(%struct.spi_device* %143, %struct.spi_message* %9)
  store i32 %144, i32* %14, align 4
  %145 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %146 = call i32 @dataflash_waitready(%struct.spi_device* %145)
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %109
  %150 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %151 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %150, i32 0, i32 0
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %153)
  br label %72

155:                                              ; preds = %109
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load i32, i32* %10, align 4
  %160 = zext i32 %159 to i64
  %161 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %162 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %168 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %188

171:                                              ; preds = %155
  %172 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %173 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %177 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %181 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %185 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %171, %158
  br label %72

189:                                              ; preds = %72
  %190 = load %struct.dataflash*, %struct.dataflash** %6, align 8
  %191 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %190, i32 0, i32 2
  %192 = call i32 @mutex_unlock(i32* %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %189, %58, %45
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @div_u64_rem(i64, i32, i64*) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @div_u64(i64, i32) #2

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

declare dso_local i32 @dataflash_waitready(%struct.spi_device*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
