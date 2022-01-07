; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 (%struct.mtd_info*, %struct.erase_info*)*, i64, i32, i32 }
%struct.erase_info = type opaque
%struct.erase_info.0 = type { i64, i64, i32 }

@MTD_FAIL_ADDR_UNKNOWN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_erase(%struct.mtd_info* %0, %struct.erase_info.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info.0*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info.0* %1, %struct.erase_info.0** %5, align 8
  %6 = load i32, i32* @MTD_FAIL_ADDR_UNKNOWN, align 4
  %7 = load %struct.erase_info.0*, %struct.erase_info.0** %5, align 8
  %8 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, %struct.erase_info*)** %15, align 8
  %17 = icmp ne i32 (%struct.mtd_info*, %struct.erase_info*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %13
  %22 = load %struct.erase_info.0*, %struct.erase_info.0** %5, align 8
  %23 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = load %struct.erase_info.0*, %struct.erase_info.0** %5, align 8
  %31 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.erase_info.0*, %struct.erase_info.0** %5, align 8
  %37 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = icmp sgt i64 %32, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29, %21
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %29
  %45 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MTD_WRITEABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EROFS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %69

54:                                               ; preds = %44
  %55 = load %struct.erase_info.0*, %struct.erase_info.0** %5, align 8
  %56 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %69

60:                                               ; preds = %54
  %61 = call i32 (...) @ledtrig_mtd_activity()
  %62 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, %struct.erase_info*)** %63, align 8
  %65 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %66 = load %struct.erase_info.0*, %struct.erase_info.0** %5, align 8
  %67 = bitcast %struct.erase_info.0* %66 to %struct.erase_info*
  %68 = call i32 %64(%struct.mtd_info* %65, %struct.erase_info* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %59, %51, %41, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ledtrig_mtd_activity(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
