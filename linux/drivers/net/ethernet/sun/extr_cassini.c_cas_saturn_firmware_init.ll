; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_saturn_firmware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_saturn_firmware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }

@__const.cas_saturn_firmware_init.fw_name = private unnamed_addr constant [16 x i8] c"sun/cassini.bin\00", align 16
@PHY_NS_DP83065 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to load firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bogus length %zu in \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_saturn_firmware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_saturn_firmware_init(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %6 = bitcast [16 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.cas_saturn_firmware_init.fw_name, i32 0, i32 0), i64 16, i1 false)
  %7 = load i64, i64* @PHY_NS_DP83065, align 8
  %8 = load %struct.cas*, %struct.cas** %2, align 8
  %9 = getelementptr inbounds %struct.cas, %struct.cas* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %83

13:                                               ; preds = %1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %15 = load %struct.cas*, %struct.cas** %2, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @request_firmware(%struct.firmware** %3, i8* %14, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %83

25:                                               ; preds = %13
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.firmware*, %struct.firmware** %3, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33, i8* %34)
  br label %80

36:                                               ; preds = %25
  %37 = load %struct.firmware*, %struct.firmware** %3, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.firmware*, %struct.firmware** %3, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %42, %47
  %49 = load %struct.cas*, %struct.cas** %2, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.firmware*, %struct.firmware** %3, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 2
  %55 = load %struct.cas*, %struct.cas** %2, align 8
  %56 = getelementptr inbounds %struct.cas, %struct.cas* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cas*, %struct.cas** %2, align 8
  %58 = getelementptr inbounds %struct.cas, %struct.cas* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @vmalloc(i32 %59)
  %61 = load %struct.cas*, %struct.cas** %2, align 8
  %62 = getelementptr inbounds %struct.cas, %struct.cas* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cas*, %struct.cas** %2, align 8
  %64 = getelementptr inbounds %struct.cas, %struct.cas* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %36
  br label %80

68:                                               ; preds = %36
  %69 = load %struct.cas*, %struct.cas** %2, align 8
  %70 = getelementptr inbounds %struct.cas, %struct.cas* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.firmware*, %struct.firmware** %3, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load %struct.cas*, %struct.cas** %2, align 8
  %77 = getelementptr inbounds %struct.cas, %struct.cas* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %71, i32* %75, i32 %78)
  br label %80

80:                                               ; preds = %68, %67, %30
  %81 = load %struct.firmware*, %struct.firmware** %3, align 8
  %82 = call i32 @release_firmware(%struct.firmware* %81)
  br label %83

83:                                               ; preds = %80, %22, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @vmalloc(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
