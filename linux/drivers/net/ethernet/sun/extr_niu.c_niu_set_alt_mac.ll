; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_alt_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_alt_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32, i8*)* @niu_set_alt_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_set_alt_mac(%struct.niu* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.niu* %0, %struct.niu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 5
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %15, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %8, align 1
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %26, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %37, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %10, align 1
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.niu*, %struct.niu** %5, align 8
  %46 = call i32 @niu_num_alt_addr(%struct.niu* %45)
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %85

51:                                               ; preds = %3
  %52 = load %struct.niu*, %struct.niu** %5, align 8
  %53 = getelementptr inbounds %struct.niu, %struct.niu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @XMAC_ALT_ADDR0(i32 %59)
  %61 = load i8, i8* %8, align 1
  %62 = call i32 @nw64_mac(i32 %60, i8 zeroext %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @XMAC_ALT_ADDR1(i32 %63)
  %65 = load i8, i8* %9, align 1
  %66 = call i32 @nw64_mac(i32 %64, i8 zeroext %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @XMAC_ALT_ADDR2(i32 %67)
  %69 = load i8, i8* %10, align 1
  %70 = call i32 @nw64_mac(i32 %68, i8 zeroext %69)
  br label %84

71:                                               ; preds = %51
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @BMAC_ALT_ADDR0(i32 %72)
  %74 = load i8, i8* %8, align 1
  %75 = call i32 @nw64_mac(i32 %73, i8 zeroext %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @BMAC_ALT_ADDR1(i32 %76)
  %78 = load i8, i8* %9, align 1
  %79 = call i32 @nw64_mac(i32 %77, i8 zeroext %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @BMAC_ALT_ADDR2(i32 %80)
  %82 = load i8, i8* %10, align 1
  %83 = call i32 @nw64_mac(i32 %81, i8 zeroext %82)
  br label %84

84:                                               ; preds = %71, %58
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %48
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @niu_num_alt_addr(%struct.niu*) #1

declare dso_local i32 @nw64_mac(i32, i8 zeroext) #1

declare dso_local i32 @XMAC_ALT_ADDR0(i32) #1

declare dso_local i32 @XMAC_ALT_ADDR1(i32) #1

declare dso_local i32 @XMAC_ALT_ADDR2(i32) #1

declare dso_local i32 @BMAC_ALT_ADDR0(i32) #1

declare dso_local i32 @BMAC_ALT_ADDR1(i32) #1

declare dso_local i32 @BMAC_ALT_ADDR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
