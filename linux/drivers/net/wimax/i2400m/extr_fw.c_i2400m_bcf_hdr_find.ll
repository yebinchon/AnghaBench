; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_bcf_hdr_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_bcf_hdr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m_bcf_hdr = type { i32 }
%struct.i2400m = type { %struct.i2400m_bcf_hdr**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"finding BCF header for barker %08x\0A\00", align 1
@I2400M_NBOOT_BARKER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"using BCF header #%u/%08x for non-signed barker\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hit on BCF hdr #%u/%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"miss on BCF hdr #%u/%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"cannot find a matching BCF header for barker %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2400m_bcf_hdr* (%struct.i2400m*)* @i2400m_bcf_hdr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2400m_bcf_hdr* @i2400m_bcf_hdr_find(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m_bcf_hdr*, align 8
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2400m_bcf_hdr**, align 8
  %6 = alloca %struct.i2400m_bcf_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le32_to_cpu(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32, %struct.device*, i8*, i32, ...) @d_printf(i32 2, %struct.device* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @I2400M_NBOOT_BARKER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %28 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %27, i32 0, i32 0
  %29 = load %struct.i2400m_bcf_hdr**, %struct.i2400m_bcf_hdr*** %28, align 8
  %30 = getelementptr inbounds %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %29, i64 0
  %31 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %30, align 8
  store %struct.i2400m_bcf_hdr* %31, %struct.i2400m_bcf_hdr** %6, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = call i32 (i32, %struct.device*, i8*, i32, ...) @d_printf(i32 1, %struct.device* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 0, i64 %36)
  %38 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  store %struct.i2400m_bcf_hdr* %38, %struct.i2400m_bcf_hdr** %2, align 8
  br label %81

39:                                               ; preds = %1
  %40 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %41 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %40, i32 0, i32 0
  %42 = load %struct.i2400m_bcf_hdr**, %struct.i2400m_bcf_hdr*** %41, align 8
  store %struct.i2400m_bcf_hdr** %42, %struct.i2400m_bcf_hdr*** %5, align 8
  br label %43

43:                                               ; preds = %72, %39
  %44 = load %struct.i2400m_bcf_hdr**, %struct.i2400m_bcf_hdr*** %5, align 8
  %45 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %44, align 8
  %46 = icmp ne %struct.i2400m_bcf_hdr* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.i2400m_bcf_hdr**, %struct.i2400m_bcf_hdr*** %5, align 8
  %49 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %48, align 8
  store %struct.i2400m_bcf_hdr* %49, %struct.i2400m_bcf_hdr** %6, align 8
  %50 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %51 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %52 = call i64 @i2400m_bcf_hdr_match(%struct.i2400m* %50, %struct.i2400m_bcf_hdr* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = call i32 (i32, %struct.device*, i8*, i32, ...) @d_printf(i32 1, %struct.device* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %60)
  %62 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  store %struct.i2400m_bcf_hdr* %62, %struct.i2400m_bcf_hdr** %2, align 8
  br label %81

63:                                               ; preds = %47
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %6, align 8
  %67 = getelementptr inbounds %struct.i2400m_bcf_hdr, %struct.i2400m_bcf_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  %70 = call i32 (i32, %struct.device*, i8*, i32, ...) @d_printf(i32 1, %struct.device* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %65, i64 %69)
  br label %71

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.i2400m_bcf_hdr**, %struct.i2400m_bcf_hdr*** %5, align 8
  %74 = getelementptr inbounds %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %73, i32 1
  store %struct.i2400m_bcf_hdr** %74, %struct.i2400m_bcf_hdr*** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  store %struct.i2400m_bcf_hdr* null, %struct.i2400m_bcf_hdr** %2, align 8
  br label %81

81:                                               ; preds = %77, %54, %26
  %82 = load %struct.i2400m_bcf_hdr*, %struct.i2400m_bcf_hdr** %2, align 8
  ret %struct.i2400m_bcf_hdr* %82
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32, ...) #1

declare dso_local i64 @i2400m_bcf_hdr_match(%struct.i2400m*, %struct.i2400m_bcf_hdr*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
