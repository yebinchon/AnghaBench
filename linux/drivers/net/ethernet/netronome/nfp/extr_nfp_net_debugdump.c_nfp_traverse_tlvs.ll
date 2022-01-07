; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_traverse_tlvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_traverse_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_tl = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, i8*, i32, i8*, i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)*)* @nfp_traverse_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_traverse_tlvs(%struct.nfp_pf* %0, i8* %1, i32 %2, i8* %3, i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_pf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nfp_dump_tl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)* %4, i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %15, align 8
  br label %20

20:                                               ; preds = %80, %5
  %21 = load i64, i64* %12, align 8
  %22 = icmp uge i64 %21, 8
  br i1 %22, label %23, label %81

23:                                               ; preds = %20
  %24 = load i8*, i8** %15, align 8
  %25 = bitcast i8* %24 to %struct.nfp_dump_tl*
  store %struct.nfp_dump_tl* %25, %struct.nfp_dump_tl** %13, align 8
  %26 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %13, align 8
  %27 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %13, align 8
  %32 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %81

36:                                               ; preds = %30, %23
  %37 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %13, align 8
  %38 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 8
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %82

48:                                               ; preds = %36
  %49 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %13, align 8
  %50 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = add i64 8, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = srem i32 %56, 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %82

62:                                               ; preds = %48
  %63 = load i32, i32* %14, align 4
  %64 = load i8*, i8** %15, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %15, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %12, align 8
  %71 = load i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)*, i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)** %11, align 8
  %72 = load %struct.nfp_pf*, %struct.nfp_pf** %7, align 8
  %73 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %13, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 %71(%struct.nfp_pf* %72, %struct.nfp_dump_tl* %73, i8* %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %6, align 4
  br label %82

80:                                               ; preds = %62
  br label %20

81:                                               ; preds = %35, %20
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %78, %59, %45
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
