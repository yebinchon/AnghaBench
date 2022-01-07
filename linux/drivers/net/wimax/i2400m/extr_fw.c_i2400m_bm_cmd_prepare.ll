; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_bm_cmd_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_bm_cmd_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m_bootrom_header = type { i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_bm_cmd_prepare(%struct.i2400m_bootrom_header* %0) #0 {
  %2 = alloca %struct.i2400m_bootrom_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.i2400m_bootrom_header* %0, %struct.i2400m_bootrom_header** %2, align 8
  %6 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %7 = call i64 @i2400m_brh_get_use_checksum(%struct.i2400m_bootrom_header* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %10 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %11 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %9
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %18 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* %23, align 4
  %26 = call i64 @cpu_to_le32(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %36 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %39 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %43 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @cpu_to_le32(i32 %51)
  %53 = load %struct.i2400m_bootrom_header*, %struct.i2400m_bootrom_header** %2, align 8
  %54 = getelementptr inbounds %struct.i2400m_bootrom_header, %struct.i2400m_bootrom_header* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %34, %1
  ret void
}

declare dso_local i64 @i2400m_brh_get_use_checksum(%struct.i2400m_bootrom_header*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
