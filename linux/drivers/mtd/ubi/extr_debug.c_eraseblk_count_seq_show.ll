; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_eraseblk_count_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_eraseblk_count_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ubi_device* }
%struct.ubi_device = type { i32, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"physical_block_number\09erase_count\09block_status\09read_status\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%-22d\09%-11d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @eraseblk_count_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eraseblk_count_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_wl_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.ubi_device*, %struct.ubi_device** %12, align 8
  store %struct.ubi_device* %13, %struct.ubi_device** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ubi_io_is_bad(%struct.ubi_device* %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %22
  %32 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 1
  %37 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %37, i64 %40
  %42 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %41, align 8
  store %struct.ubi_wl_entry* %42, %struct.ubi_wl_entry** %7, align 8
  %43 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %7, align 8
  %44 = icmp ne %struct.ubi_wl_entry* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %7, align 8
  %47 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %31
  %50 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %51 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %62

56:                                               ; preds = %49
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %55, %29, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @ubi_io_is_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
