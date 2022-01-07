; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@BFI_FLASH_CHUNK_SZ_WORDS = common dso_local global i32 0, align 4
@BFI_FWBOOT_ENV_OS = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_FLASH = common dso_local global i64 0, align 8
@BFI_FLASH_IMAGE_SZ = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i64 0, align 8
@BFI_FWBOOT_DEVMODE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_OFF = common dso_local global i64 0, align 8
@BFI_FWBOOT_ENV_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*, i64, i64)* @bfa_ioc_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_download_fw(%struct.bfa_ioc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load i32, i32* @BFI_FLASH_CHUNK_SZ_WORDS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @BFI_FWBOOT_ENV_OS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @BFI_FWBOOT_TYPE_FLASH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* @BFI_FLASH_IMAGE_SZ, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 8
  store i64 %33, i64* %14, align 8
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %35)
  %37 = call i32 @bfa_nw_ioc_flash_img_get_chnk(%struct.bfa_ioc* %34, i32 %36, i64* %22)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @BFA_STATUS_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %189

43:                                               ; preds = %30
  store i64* %22, i64** %8, align 8
  br label %53

44:                                               ; preds = %26, %3
  %45 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %46 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %45)
  %47 = call i64 @bfa_cb_image_get_size(i32 %46)
  store i64 %47, i64* %14, align 8
  %48 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %49 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %48)
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %50)
  %52 = call i64* @bfa_cb_image_get_chunk(i32 %49, i32 %51)
  store i64* %52, i64** %8, align 8
  br label %53

53:                                               ; preds = %44, %43
  %54 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc* %54, i64 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @writel(i64 %57, i64 %61)
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %130, %53
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %133

67:                                               ; preds = %63
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %68)
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @BFA_IOC_FLASH_CHUNK_NO(i64 %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @BFI_FWBOOT_ENV_OS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @BFI_FWBOOT_TYPE_FLASH, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %84)
  %86 = call i32 @bfa_nw_ioc_flash_img_get_chnk(%struct.bfa_ioc* %83, i32 %85, i64* %22)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @BFA_STATUS_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %189

92:                                               ; preds = %82
  store i64* %22, i64** %8, align 8
  br label %99

93:                                               ; preds = %78, %72
  %94 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %95 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %94)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64 %96)
  %98 = call i64* @bfa_cb_image_get_chunk(i32 %95, i32 %97)
  store i64* %98, i64** %8, align 8
  br label %99

99:                                               ; preds = %93, %92
  br label %100

100:                                              ; preds = %99, %67
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64 %102)
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @swab32(i64 %105)
  %107 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %108 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i64 %106, i64 %112)
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, 8
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @PSS_SMEM_PGOFF(i64 %116)
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %10, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %100
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %125 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @writel(i64 %123, i64 %127)
  br label %129

129:                                              ; preds = %120, %100
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %12, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %12, align 8
  br label %63

133:                                              ; preds = %63
  %134 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %135 = call i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc* %134, i64 0)
  %136 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %137 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @writel(i64 %135, i64 %139)
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @BFI_FWBOOT_ENV_OS, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* @BFI_FWBOOT_TYPE_FLASH, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i64, i64* @BFI_FWBOOT_TYPE_NORMAL, align 8
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %148, %144, %133
  %151 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %152 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %155 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %158 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %161 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @BFI_FWBOOT_DEVMODE(i32 %153, i32 %156, i32 %159, i32 %162)
  store i64 %163, i64* %13, align 8
  %164 = load i64, i64* %13, align 8
  %165 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %166 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @BFI_FWBOOT_DEVMODE_OFF, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @writel(i64 %164, i64 %170)
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %174 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @BFI_FWBOOT_TYPE_OFF, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i64 %172, i64 %178)
  %180 = load i64, i64* %7, align 8
  %181 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %182 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @BFI_FWBOOT_ENV_OFF, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i64 %180, i64 %186)
  %188 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %188, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %189

189:                                              ; preds = %150, %90, %41
  %190 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_nw_ioc_flash_img_get_chnk(%struct.bfa_ioc*, i32, i64*) #2

declare dso_local i32 @BFA_IOC_FLASH_CHUNK_ADDR(i64) #2

declare dso_local i64 @bfa_cb_image_get_size(i32) #2

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #2

declare dso_local i64* @bfa_cb_image_get_chunk(i32, i32) #2

declare dso_local i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc*, i64) #2

declare dso_local i32 @writel(i64, i64) #2

declare dso_local i64 @BFA_IOC_FLASH_CHUNK_NO(i64) #2

declare dso_local i64 @swab32(i64) #2

declare dso_local i64 @BFA_IOC_FLASH_OFFSET_IN_CHUNK(i64) #2

declare dso_local i64 @PSS_SMEM_PGOFF(i64) #2

declare dso_local i64 @BFI_FWBOOT_DEVMODE(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
