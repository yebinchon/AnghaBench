; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_srom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_srom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de4x5_srom = type { i64, i32, i64, i64, i64, i64, i64 }

@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_SROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Sub-system Vendor ID: %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Sub-system ID:        %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ID Block CRC:         %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SROM version:         %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"# controllers:        %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Hardware Address:     %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"CRC checksum:         %04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%3d %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de4x5_srom*)* @de4x5_dbg_srom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_dbg_srom(%struct.de4x5_srom* %0) #0 {
  %2 = alloca %struct.de4x5_srom*, align 8
  %3 = alloca i32, align 4
  store %struct.de4x5_srom* %0, %struct.de4x5_srom** %2, align 8
  %4 = load i32, i32* @de4x5_debug, align 4
  %5 = load i32, i32* @DEBUG_SROM, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %1
  %9 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %10 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %17 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %24 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %29 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %34 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %39 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %43 = getelementptr inbounds %struct.de4x5_srom, %struct.de4x5_srom* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %60, %8
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 64
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = shl i32 %51, 1
  %53 = load %struct.de4x5_srom*, %struct.de4x5_srom** %2, align 8
  %54 = bitcast %struct.de4x5_srom* %53 to i64*
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %52, i64 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %47

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %1
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
