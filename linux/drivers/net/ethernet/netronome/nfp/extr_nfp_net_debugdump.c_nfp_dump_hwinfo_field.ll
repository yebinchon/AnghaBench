; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_hwinfo_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_hwinfo_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_tl = type { i8*, i32 }
%struct.nfp_dump_state = type { %struct.nfp_dump_tl* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFP_DUMPSPEC_TYPE_HWINFO_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, %struct.nfp_dump_state*)* @nfp_dump_hwinfo_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_hwinfo_field(%struct.nfp_pf* %0, %struct.nfp_dump_tl* %1, %struct.nfp_dump_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_dump_tl*, align 8
  %7 = alloca %struct.nfp_dump_state*, align 8
  %8 = alloca %struct.nfp_dump_tl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dump_tl* %1, %struct.nfp_dump_tl** %6, align 8
  store %struct.nfp_dump_state* %2, %struct.nfp_dump_state** %7, align 8
  %16 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %17 = getelementptr inbounds %struct.nfp_dump_state, %struct.nfp_dump_state* %16, i32 0, i32 0
  %18 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %17, align 8
  store %struct.nfp_dump_tl* %18, %struct.nfp_dump_tl** %8, align 8
  %19 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @be32_to_cpu(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %24 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @strnlen(i8* %25, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %36 = call i32 @nfp_dump_error_tlv(%struct.nfp_dump_tl* %32, i32 %34, %struct.nfp_dump_state* %35)
  store i32 %36, i32* %4, align 4
  br label %91

37:                                               ; preds = %3
  %38 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %39 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %12, align 8
  %41 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %42 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @nfp_hwinfo_lookup(i32 %43, i8* %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %37
  %49 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %53 = call i32 @nfp_dump_error_tlv(%struct.nfp_dump_tl* %49, i32 %51, %struct.nfp_dump_state* %52)
  store i32 %53, i32* %4, align 4
  br label %91

54:                                               ; preds = %37
  %55 = load i8*, i8** %13, align 8
  %56 = call i64 @strlen(i8* %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %57, %58
  %60 = add nsw i64 %59, 2
  %61 = call i64 @ALIGN8(i64 %60)
  %62 = add i64 16, %61
  store i64 %62, i64* %14, align 8
  %63 = load i32, i32* @NFP_DUMPSPEC_TYPE_HWINFO_FIELD, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %7, align 8
  %66 = call i32 @nfp_add_tlv(i32 %63, i64 %64, %struct.nfp_dump_state* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %4, align 4
  br label %91

71:                                               ; preds = %54
  %72 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %8, align 8
  %73 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %77, 1
  %79 = call i32 @memcpy(i64 %75, i8* %76, i64 %78)
  %80 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %8, align 8
  %81 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = ptrtoint i8* %85 to i64
  %87 = load i8*, i8** %13, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, 1
  %90 = call i32 @memcpy(i64 %86, i8* %87, i64 %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %71, %69, %48, %31
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @nfp_dump_error_tlv(%struct.nfp_dump_tl*, i32, %struct.nfp_dump_state*) #1

declare dso_local i8* @nfp_hwinfo_lookup(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ALIGN8(i64) #1

declare dso_local i32 @nfp_add_tlv(i32, i64, %struct.nfp_dump_state*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
