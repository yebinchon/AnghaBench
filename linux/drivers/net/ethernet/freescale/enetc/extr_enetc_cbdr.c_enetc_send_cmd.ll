; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_cbdr.c_enetc_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.enetc_cbdr }
%struct.enetc_cbdr = type { i32, i32, i32, i32, i32 }
%struct.enetc_cbd = type { i32 }

@ENETC_CBDR_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_si*, %struct.enetc_cbd*)* @enetc_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_send_cmd(%struct.enetc_si* %0, %struct.enetc_cbd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca %struct.enetc_cbd*, align 8
  %6 = alloca %struct.enetc_cbdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_cbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.enetc_cbdr, align 8
  store %struct.enetc_si* %0, %struct.enetc_si** %4, align 8
  store %struct.enetc_cbd* %1, %struct.enetc_cbd** %5, align 8
  %11 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %12 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %11, i32 0, i32 0
  store %struct.enetc_cbdr* %12, %struct.enetc_cbdr** %6, align 8
  %13 = load i32, i32* @ENETC_CBDR_TIMEOUT, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %15 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %2
  %26 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %27 = call i32 @enetc_cbd_unused(%struct.enetc_cbdr* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %35 = call i32 @enetc_clean_cbdr(%struct.enetc_si* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %38 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = bitcast %struct.enetc_cbdr* %10 to i8*
  %43 = bitcast %struct.enetc_cbdr* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 20, i1 false)
  %44 = call %struct.enetc_cbd* @ENETC_CBD(%struct.enetc_cbdr* byval(%struct.enetc_cbdr) align 8 %10, i32 %41)
  store %struct.enetc_cbd* %44, %struct.enetc_cbd** %8, align 8
  %45 = load %struct.enetc_cbd*, %struct.enetc_cbd** %8, align 8
  %46 = load %struct.enetc_cbd*, %struct.enetc_cbd** %5, align 8
  %47 = bitcast %struct.enetc_cbd* %45 to i8*
  %48 = bitcast %struct.enetc_cbd* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %52 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %57 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %59 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @enetc_wr_reg(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %75, %36
  %64 = load %struct.enetc_cbdr*, %struct.enetc_cbdr** %6, align 8
  %65 = getelementptr inbounds %struct.enetc_cbdr, %struct.enetc_cbdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @enetc_rd_reg(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %78

71:                                               ; preds = %63
  %72 = call i32 @udelay(i32 10)
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 10
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %63, label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %87

84:                                               ; preds = %78
  %85 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %86 = call i32 @enetc_clean_cbdr(%struct.enetc_si* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %81, %22
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enetc_cbd_unused(%struct.enetc_cbdr*) #1

declare dso_local i32 @enetc_clean_cbdr(%struct.enetc_si*) #1

declare dso_local %struct.enetc_cbd* @ENETC_CBD(%struct.enetc_cbdr* byval(%struct.enetc_cbdr) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @enetc_wr_reg(i32, i32) #1

declare dso_local i32 @enetc_rd_reg(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
